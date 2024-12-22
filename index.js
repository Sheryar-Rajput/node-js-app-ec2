const express = require("express");
const app = express();

app.listen(80, () => {
  console.log("app is running on 80 port");
});

app.get("/", (req, res) => {
  return res.status(200).send("hello world");
});
