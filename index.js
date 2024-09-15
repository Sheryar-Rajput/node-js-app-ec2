const express = require("express");
const app = express();

app.listen(5000, () => {
  console.log("app is running on 5000 port");
});

app.get("/", (req, res) => {
  return res.status(200).send("hello world");
});
