const fs = require('fs');
var info;
var infoStr;

console.log("Hello, World!");

fs.writeFileSync("out.txt","test");
console.log("test - write in out.txt!");
info = fs.readFileSync("in.txt");
infoStr = String(info);
console.log(infoStr);