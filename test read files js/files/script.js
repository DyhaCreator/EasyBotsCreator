import {$,jQuery} from 'jquery';

input = document.getElementById("input");
button = document.getElementById("button");
output = document.getElementById("output");
let fileName = "";

function onStart(){
    input.value = "test.txt";
}
button.onclick = function(){
    fileName = input.value;
    output.innerText = fileName;
}
onStart();