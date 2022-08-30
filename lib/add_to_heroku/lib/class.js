/*const myFile = require('./index');
myFile.firstFunction();
myFile.secondFunction();
myFile.myAge();
console.log(__filename);
console.log(__dirname);
//********************************* */
/*const fileSystem = require("fs");
fileSystem.writeFile("myFile.txt", "Hello, my name is Adham ,", () => {
  console.log("file created successfully");
});
fileSystem.readFile("myFile.txt",'utf-8', (err, data) => {
  if (err) {
    console.log(err);
  } else {
    console.log(data);
  }
});*/
//*********************** */
//1
/*const http = require("http");
const myServer = http.createServer((req, res) => {
  const url = req.url;
  url === '/'
    ? res.write("<h1>Hello From Server</h1>")
    : url === '/home'
    ? res.write("<h1>Hello From home</h1>")
    : res.write("<h1> your request is not found</h1>");
});
myServer.listen(9090, () => {
  console.log("server is running on port 9090");
});*/
//**************************************** */
//2 express js

const express = require("express");
const app =  express();
const router = require("./routes/product");
const mongoose = require("mongoose");
const cors = require("cors");

app.use("/", express.json());
app.use("/", router);
app.use(cors());
mongoose.connect(
  "mongodb+srv://Adham:kCNvUkzTib1AnfS9@cluster0.bituowo.mongodb.net/?retryWrites=true&w=majority",
  () => {
    console.log("connection is successfully");
    app.listen(process.env.PORT||8080 , () => {
      console.log("the server is running now");
    });
  }
);
