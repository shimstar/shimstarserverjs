'use strict';
//debugger;

shimstar.ShimPlayer = function () {
   this.id=0;
   this.name="";
   this.socket = null;
   this.missions = [];
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

  acceptMission : function(idMission){
    let isNew = true;
    if (this.missions){
      for (let i = 0 ; i < this.missions.length ; i++){
          if(idMission == this.missions[i].id) isNew = false;
      }
    }
    if(isNew){
      if (this.missions == undefined) this.missions = [];
      let tempMission = new shimstar.ShimMission();
      tempMission.buildFromJson(shimWorld.missionsTemplate[idMission]);
      this.missions.push(tempMission);
    }
  }
};
