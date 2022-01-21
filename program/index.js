var express = require("express");
const mysql = require("mysql");
const fastcsv = require("fast-csv");

const app = express();

const fs = require("fs");
const ws = fs.createWriteStream("itbuddies.csv");

//Create a connection to the database

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "getcsv",
});

//api

app.get("/exportcsv", (req, res) => {
  connection.query("SELECT * FROM demo", function (err, data) {
    if (err) throw err;

    //JSON
    const jsonData = JSON.parse(JSON.stringify(data));
    console.log("jsonData", jsonData);

    //csv
    fastcsv
      .write(jsonData, { headers: true })
      .on("finish", function () {
        console.log("Write to itbuddies.csv successfully!");
      })
      .pipe(ws);
  });
});

//PORT
app.listen(3000, function () {
  console.log("Node app is running.");
});
