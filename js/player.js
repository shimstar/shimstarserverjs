'use strict';
//debugger;

shimstar.ShimPlayer = function () {
   this.id=0;
   this.name="";
   this.socket = null;
   this.mission = null;
};

shimstar.ShimPlayer.prototype = {
  dump : function(){
    shimstar.serverLog("id = " + this.id + "/" + "name" + this.name + "/socket=" + this.socket);
  },
  toJson : function(){
    let tempMission = null;
    if (this.mission) tempMission = this.mission.toJson();
    return{
      id : this.id,
      name : this.name,
      mission : tempMission
    };
  }

};
