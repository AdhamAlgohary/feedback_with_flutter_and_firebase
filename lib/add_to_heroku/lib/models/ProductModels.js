const mongoose = require("mongoose");
const productModel = mongoose.Schema({
  reasonNotSimple: String,
  sugesstion: String,
});
module.exports = mongoose.model("products", productModel);
