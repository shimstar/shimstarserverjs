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
    for (let itMission in this.missions){
      tempMissions.push(this.missions[itMission].toJson());
    }
    //if (this.mission) tempMission = this.mission.toJson();

    return{
      id : this.id,
      name : this.name,
      missions : tempMissions
    };
  }

  proposeMission : function(idMission){


  }

};
