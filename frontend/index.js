const express = require("express");
const bodyParser = require("body-parser");
const mysql = require("mysql");
const path = require("path");

const app = express();
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");
app.use(bodyParser.urlencoded({ extended: false }));
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
// function SubmitQuery() {
app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname + "/index.html"));
});

// function CreateTable(rowHeader, fields) {
//   const table = document.createTable("table");
//   const tr = table.insertRow(-1);

//   for (let i = 0; i < rowHeader.length; i++) {
//     let th = document.createElement("th");
//     th.innerHTML = rowHeader[i];
//     tr.appendChild(th);
//   }

//   for (let i = 0; i < fields.length; i++) {
//     tr = table.insertRow(-1);

//     for (let j = 0; j < rowHeader.length; j++) {
//       var tabCell = tr.insertCell(-1);
//       tabCell.innerHTML = fields[i][col[j]];
//     }
//   }

//   // FINALLY ADD THE NEWLY CREATED TABLE WITH JSON DATA TO A CONTAINER.
//   const divContainer = document.getElementById("showData");
//   divContainer.innerHTML = "";
//   divContainer.appendChild(table);
// }

app.post("/sql-query", (req, res) => {
  const { sql } = req.body;
  connection.query(sql, (err, rows, fields) => {
    if (err) {
      console.log(`Error in the query, ${err}`);
      res.send(`Error in the query, ${err}`);
    } else {
      let a = [];
      let rowHeader = [];
      console.log("Success!");
      for (let field of fields) {
        rowHeader.push(field.name);
      }
      for (let row of rows) {
        a.push(row);
      }
      // a.push(rows);
      // CreateTable(rowHeader, a);
      // res.json(a);
      // res.send(rows);
      res.render("testTable", { page_title: "Test Table", data: rows });
    }
  });
  // res.send(req.body.sql);
});

// }
app.listen("8080", () => {
  console.log("Server is up and running on port 8080");
});
