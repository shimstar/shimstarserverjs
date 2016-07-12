'use strict';
//debugger;

shimstar.ShimMission = function () {
   this.id=0;
   this.name="";
   this.text="";
   this.objectif = null;

};

shimstar.ShimMission.prototype = {
  buildFromJson : function(src){
    this.id = src.id;
    this.name = src.name;
    this.text = src.text;
    let tempObjectif = new shimstar.ShimObjectif();
    tempObjectif.buildFromJson(src.objectif);
    this.objectif = tempObjectif
  },


  };
