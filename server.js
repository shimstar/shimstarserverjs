var net = require('net');
var mysql = require('mysql');

var mySqlClient = mysql.createConnection({
  host     : "localhost",
  user     : "root",
  password : "leacurne",
  database : "shimstar"
});

//~ var selectQuery = 'SELECT * FROM star001_user';
 
//~ mySqlClient.query(
  //~ selectQuery,
  //~ function select(error, results, fields) {
    //~ if (error) {
      //~ console.log(error);
      //~ mySqlClient.end();
      //~ return;
    //~ }
 
    //~ if ( results.length > 0 )  { 
		 
		//~ for(var i=0;i<results.length;i++){
      //~ var firstResult = results[ i ];
			
      //~ console.log('id: ' + firstResult['star001_id']);
      //~ console.log('label: ' + firstResult['star001_name']);
      //~ console.log('valeur: ' + firstResult['valeur']);
		//~ }
    //~ } else {
      //~ console.log("Pas de données");
    //~ }
    //~ mySqlClient.end();
  //~ }
//~ );
// Keep track of the chat clients
var clients = [];

// Start a TCP Server
net.createServer(function (socket) {
	
  // Identify this client
  socket.name = socket.remoteAddress + ":" + socket.remotePort 

  // Put this new client in the list
  clients.push(socket);

  // Send a nice welcome message and announce
  //~ socket.write("Welcome " + socket.name + "\n");
  broadcast(socket.name + " joined the chat\n", socket);

  // Handle incoming messages from clients.
  socket.on('data', function (data) {
    //broadcast(socket.name + "> " + data, socket);
	  try{
		var val = JSON.parse(data);
		if (val.code == "1"){
			login(socket,val);
		}
	  }catch(err){
			console.log("data received not in JSON format : "  + data  + "/////" + err);
	  }
  });
	socket.on('error',function(){
		console.log('socket reset');
		clients.splice(clients.indexOf(socket), 1);
	});
  // Remove the client from the list when it leaves
  socket.on('end', function () {
    clients.splice(clients.indexOf(socket), 1);
    broadcast(socket.name + " left the chat.\n");
  });
  
  function login(sender,jsonObj){
	  //~ console.log(jsonObj);
	  var selectQuery = "SELECT * FROM star001_user where star001_name ='" + jsonObj.login + "' and star001_passwd = '" + jsonObj.password +"'";
	   var status=0;
		var sqlQuery = mySqlClient.query(selectQuery);
		sqlQuery.on("result", function(row) {

		  status=1;
		});
		 
		sqlQuery.on("end", function() {
		  mySqlClient.end();
		  sender.write('{"code":"1","status":"' + status + '"}');
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
      if (client === sender) return;
      client.write(message);
    });
    // Log it to the server output too
    process.stdout.write(message)
  }

}).listen(5000);

// Put a friendly message on the terminal of the server.
console.log("Chat server running at port 5000\n");