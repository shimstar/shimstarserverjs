var mongoose = require('mongoose');

var UserSchema = new mongoose.Schema({
  name: String,
  password : String,
  parentskill: { type: mongoose.Schema.Types.ObjectId, ref: 'Mission' },

});

mongoose.model('User', UserSchema);
