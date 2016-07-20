'use strict';
//debugger;

shimstar.ShimPlayer = function () {
   this.id=0;
   this.name="";
   this.socket = null;
   this.missions = {};
};

shimstar.ShimPlayer.prototype = {
  dump : function(){
    shimstar.serverLog("id = " + this.id + "/" + "name" + this.name + "/socket=" + this.socket);
  },
  toJson : function(){
    let tempMissions = {};
    let toReturn = {};
    for (let itMission in this.missions){
      tempMissions.push(this.missions[itMission].toJson());
    }
    toReturn.id = this.id;
    toReturn.name = this.name;
    if(tempMissions.length > 0){
      toReturn.missions = tempMissions;
    }
    return toReturn;
  },

  proposeMission : function(idMission){


  }

};
