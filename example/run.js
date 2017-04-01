var Elm = require("./elm.js");

var app = Elm.Main.worker();

app.ports.log.send("Hello, World!");

console.log("All done!");
