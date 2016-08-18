'use strict';
//debugger;

shimstar.ShimMission = function () {
   this.idtemplate=0;
   this.name="";
   this.text="";
   this.objectifs = [];
   this.id = 0;
   this.status = 0;

};

shimstar.ShimMission.prototype = {
  buildFromJson : function(src){
    this.idtemplate = src.idtemplate;
    this.name = src.name;
    this.text = src.text;
    let tempObjectif = new shimstar.ShimObjectif();
    if(src.objectifs && src.objectifs !== undefined){
      tempObjectif.buildFromJson(src.objectifs);
      if (!this.objectifs || this.objectifs === undefined) this.objectifs = [];
    }
    tempObjectif.status = shimstar.C.C_MISSION_STATUS_INPROGRESS;
    this.objectifs.push(tempObjectif);
  },

  toJson : function(){
    let tempObjectif = [];
    for(let i=0;i<this.objectifs.length;i++){
      let objf = this.objectifs[i].toJson();
      tempObjectif.push(objf);
    };
    return{
      idtemplate : this.idtemplate,
      name : this.name,
      text : this.text,
      objectif : tempObjectif
    };
  },

  toMongo : function(){
    let objfs = [];
    for(let i=0;i<this.objectifs.length;i++){
        let objf = this.objectifs[i].toMongo();
        objfs.push(objf);
    }

    return {
      idtemplate : this.idtemplate,
      status : this.status,
      objectifs : objfs
    };
  }

};
