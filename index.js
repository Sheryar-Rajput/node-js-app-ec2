const express = require("express");
const cors = require("cors");
const app = express();

app.listen(3000, () => {
  console.log("app is running on 80 port");
});

app.use(express.json());

app.get("/", (req, res) => {
  return res.status(200).send("hello world");
});

app.post("/", (req, res) => {
  console.log(req.body);
  console.log(JSON.stringify(req.body, null, 2));
  return res.status(200).send("submit");
});
