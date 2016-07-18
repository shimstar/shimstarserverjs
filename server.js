'use strict';
var net = require('net');
var mysql = require('mysql');
var fs = require('fs');
var vm = require('vm');


var mySqlClient = mysql.createConnection({
  host     : "127.0.0.1",
  user     : "shimstar",
  password : "shimstar",
  database : "shimstar"
});

var shimWorld = {};

var shimstar = {
    /**
     * Startup time.
     * @private
     */
    startTime: process.hrtime(),

    /**
     * Writes timestamped log to the console.
     * @public
     */
    serverLog: function (txt) {
        let diff = process.hrtime(this.startTime);
        let fdiff = diff[0] + diff[1] / 1e9;
        if (typeof txt !== 'undefined') {
            console.log(fdiff.toFixed(6) + ' - ' + txt);
        }
        return fdiff;
    },
};

(function () {
    const ctx = {
        shimstar: shimstar,
        shimWorld: {}
    };

    vm.createContext(ctx);
    let constantsjs = fs.readFileSync('./js/constantes.js', 'utf8').toString().replace(/^\uFEFF/, '');
    vm.runInContext(constantsjs, ctx, { filename: 'constantes.js' });
    let shimWorldjs = fs.readFileSync('./js/world.js', 'utf8').toString().replace(/^\uFEFF/, '');
    vm.runInContext(shimWorldjs, ctx, { filename: 'world.js' });
    ctx.shimWorld = new shimstar.ShimWorld();

    let playerjs = fs.readFileSync('./js/player.js', 'utf8').toString().replace(/^\uFEFF/, '');
    vm.runInContext(playerjs, ctx, { filename: 'player.js' });
    let missionjs = fs.readFileSync('./js/mission.js', 'utf8').toString().replace(/^\uFEFF/, '');
    vm.runInContext(missionjs, ctx, { filename: 'mission.js' });
    let objectifjs = fs.readFileSync('./js/objectif.js', 'utf8').toString().replace(/^\uFEFF/, '');
    vm.runInContext(objectifjs, ctx, { filename: 'objectif.js' });


    shimWorld = ctx.shimWorld;
})();


(function(){
    let localMissions = JSON.parse(fs.readFileSync('./data/mission.json', 'utf8').toString().replace(/^\uFEFF/, ''));
    for (let m in localMissions.missions){
      let tempMission = new shimstar.ShimMission();
      tempMission.buildFromJson(localMissions.missions[m]);
      shimWorld.missionsTemplate[tempMission.id] = tempMission;
    }
})();

// Keep track of the chat clients
var clients = [];

function searchUser(idUser){
  var foundUser = null;
  for (let p in shimWorld.players){
    if(shimWorld.players[p].id == idUser){
      foundUser = shimWorld.players[p];
    }
  };
  return foundUser;
}


// Start a TCP Server
net.createServer(function (socket) {

  // Identify this client
  socket.name = socket.remoteAddress + ":" + socket.remotePort

  // Put this new client in the list
  //~ clients.push(socket);

  // Send a nice welcome message and announce
  //~ socket.write("Welcome " + socket.name + "\n");
  broadcast(socket.name + " joined the chat\n", socket);

  // Handle incoming messages from clients.
  socket.on('data', function (data) {
    //broadcast(socket.name + "> " + data, socket);
	  try{
  		var val = JSON.parse(data);
  		if (val.code == shimstar.C.C_MESSAGE_LOGIN){
  			login(socket,val);
  		}
      else if(val.code == shimstar.C.C_MESSAGE_PROPOSE_MISSION){

      }
	  }catch(err){
			console.log("data received not in JSON format : "  + data  + "/////" + err);
	  }
  });
	socket.on('error',function(){
		console.log('socket reset');
    var foundUser = null;
    for (let p in shimWorld.players){

      if(shimWorld.players[p].socket == socket){
        foundUser = shimWorld.players[p];
      }
    };

    if (foundUser){
      shimstar.serverLog("User " + foundUser.name + " disconnect");
      delete shimWorld.players[foundUser.id];
    }

	});
  // Remove the client from the list when it leaves
  socket.on('end', function () {
	   //TODO : is it usefull?
  });

  function login(sender,jsonObj){
	  var selectQuery = "SELECT star001_id,star001_name FROM star001_user where star001_name ='" + jsonObj.login + "' and star001_passwd = '" + jsonObj.password +"'";
	  var status=0;
	  var tempUser ;
		var sqlQuery = mySqlClient.query(selectQuery);
		sqlQuery.on("result", function(row) {
			tempUser=new shimstar.ShimPlayer();
      tempUser.id = row.star001_id;
      tempUser.name = row.star001_name;
      tempUser.socket = sender;
      let tempMission = new shimstar.ShimMission();
      tempMission.buildFromJson(shimWorld.missionsTemplate[1]);
      tempUser.mission = tempMission;
      shimWorld.players[tempUser.id] = tempUser;

		  status=1;
		});

		sqlQuery.on("end", function() {
			if(status){
        let userJson = tempUser.toJson();
        let returnJson = {
          'code' : '1',
          'status' : status,
          'userJson' : userJson
        };
        let stringToReturn = JSON.stringify(returnJson);
        sender.write(stringToReturn);
			}else{
				sender.write('{"code":"1","status":"' + status + '"}');
			}

		});

		sqlQuery.on("error", function(error) {
		  console.log(error);
			sender.write('{"code":"1","status":"-1"}');
		});

  }

  // Send a message to all clients
  function broadcast(message, sender) {
    clients.forEach(function (client) {
      // Don't want to send it to sender
      if (client.socket === sender) return;
      client.socket.write(message);
    });
    // Log it to the server output too
    process.stdout.write(message)
  }

}).listen(5000);

// Put a friendly message on the terminal of the server.
console.log("World server running at port 5000\n");
