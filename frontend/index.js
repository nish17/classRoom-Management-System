const express = require("express");
const mysql = require("mysql");

const app = express();
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Password@123",
  database: "newClassRoom"
});

connection.connect(err => {
  if (err) {
    console.log("Something went wrong, " + err);
  } else console.log("Connected to the database");
});
app.get("/", (req, res) => {
  connection.query("SELECT * FROM classStructure", (err, rows, fields) => {
    if (err) {
      console.log(`Error in the query, ${err}`);
    } else {
      console.log("Success!");
      res.json(fields);
      res.json(rows);
    }
  });
});
app.listen("8080", () => {
  console.log("Server is up and running on port 8080");
});
