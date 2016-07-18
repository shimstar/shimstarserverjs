'use strict';
//debugger;

shimstar.ShimObjectif = function () {
   this.id=0;
   this.name="";
   this.typeObjectif = 0;
   this.custom = {};
};

shimstar.ShimObjectif.prototype = {
  buildFromJson : function(src){
    this.id = src.id;
    this.name = src.name;
    this.typeObjectif = src.typeObjectif;
    this.custom = src.custom;
  },
  toJson : function(){
    return{
      id : this.id,
      name : this.name,
      typeObjectif : this.typeObjectif,
      custom : this.custom
    };
  }
};
