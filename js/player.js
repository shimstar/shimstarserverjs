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
    let tempMissions = [];
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

  loadMissions : function(missionsTemplate,jsonMissions){
    if(jsonMissions && jsonMissions !== undefined){
      for(let i=0;i<jsonMissions.length;i++){
        let tempMission = new shimstar.ShimMission();
        tempMission.buildFromJson(shimWorld.missionsTemplate[jsonMissions[i].idtemplate]);
        tempMission.status = jsonMissions[i].status;
        this.missions.push(tempMission);
      }
    }
  },

  acceptMission : function(idMission){
    let isNew = true;
    if (this.missions && this.missions !== undefined){
      for (let i = 0 ; i < this.missions.length ; i++){
          if(idMission == this.missions[i].idtemplate) isNew = false;
      }
    }
    if(isNew){
      if (this.missions == undefined) this.missions = [];
      let tempMission = new shimstar.ShimMission();
      tempMission.buildFromJson(shimWorld.missionsTemplate[idMission]);
      tempMission.status = shimstar.C.C_MISSION_STATUS_ACCEPTED;
      this.missions.push(tempMission);
      return tempMission.toMongo();
    }
    return null;
  }
};
