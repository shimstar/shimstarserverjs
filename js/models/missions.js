var mongoose = require('mongoose');

var MissionSchema = new mongoose.Schema({
  idtemplate: Number,
  status : Number
});

mongoose.model('Mission', MissionSchema);
