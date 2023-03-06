const fs = require('fs');

var createNewCard = function(file,name,description){
    document.write("<div class='open-proj'>"
    +"<div class='proj-card' onclick=cl('"+file+"')>"
    +"<img src='sourse/proj-icon.png' class='proj-img'></img>"
    +"<section class='proj-card-sec'>"
    +"    <text class='proj-name'>"+name+"</text>"
    +"    <br>"
    +"    <text class='proj-name2'>"+description+"</text>"
    +"</section>"
    +"</div></div>");
}
function cl(file){
    console.log('hi');
    window.location = './pages/create_proj.html';
}
function main(){
    const str = String(fs.readFileSync('./data_projects/projects.data'));
    const projects = str.split(';');
    for(var i=0;i<projects.length;i++){
        const tokens = projects[i].split(':');
        createNewCard(tokens[0],tokens[1],tokens[2]);
    }
}
main();