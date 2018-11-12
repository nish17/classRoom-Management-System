const express = require("express");
const bodyParser = require("body-parser");
const mysql = require("mysql");
const path = require("path");
const app = express();
app.use(bodyParser.urlencoded({ extended: false }));
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Password@123"
  database: "newClassRoom"
});

connection.connect(err => {
  if (err) {
    console.log("Something went wrong, " + err);
  } else console.log("Connected to the database");
});
// function SubmitQuery() {
app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname + "/index.html"));
});

app.post("/sql-query", (req, res) => {
  const { sql } = req.body;
  connection.query(sql, (err, rows, fields) => {
    if (err) {
      console.log(`Error in the query, ${err}`);
      res.send("Error in the query");
    } else {
      console.log("Success!");
      // res.json(fields);
      res.send(rows);
    }
  });
  // res.send(req.body.sql);
});

// }
app.listen("8080", () => {
  console.log("Server is up and running on port 8080");
});
