'use strict';
//debugger;

shimstar.ShimPlayer = function () {
   this.id=0;
   this.name="";
   this.socket = null;
};

shimstar.ShimPlayer.prototype = {
  dump : function(){
    shimstar.serverLog("id = " + this.id + "/" + "name" + this.name + "/socket=" + this.socket);
  }

};
