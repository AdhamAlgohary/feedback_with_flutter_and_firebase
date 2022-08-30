const express = require("express");

const routes = express.Router();
const Product = require("../models/ProductModels");
//-------------------------------------------------
routes.post("/post",  (req, res) => {
  const { reasonNotSimple, sugesstion } = req.body;
  try {
    const product = new Product({
      reasonNotSimple,
      sugesstion,
    });
    /*const data = await*/ product.save().then((data) => {
      res.json({
        message: "Your document was added successfully",
        data: data,
      });
    });
  } catch (err) {
    console.log(err);
  }
});
//------------------------------------
routes.get("/get", async (req, res) => {
  try {
    const data = await Product.find();
    res.json("done");

    res.json(data);
  } catch (err) {
    console.log(err);
  }
});
//--------------------------------
routes.patch("/:id", async (req, res) => {
  try {
    const data = await Product.updateOne(
      { _id: req.params.id },
      { reasonNotSimple: req.body.reasonNotSimple }
    );

    res.json(data);
  } catch (err) {
    console.log(err);
  }
});
//-----------------------------------
routes.delete("/:id", async (req, res) => {
  try {
    const data = await Product.deleteOne({ _id: req.params.id });

    res.json(data);
  } catch (err) {
    console.log(err);
  }
});
module.exports = routes;
