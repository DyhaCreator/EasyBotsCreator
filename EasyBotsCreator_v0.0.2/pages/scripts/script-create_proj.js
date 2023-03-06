const file = document.getElementById("file");

file.onclick = function(){
    const buttonNew = document.getElementById("buttonNew");
    const buttonSave = document.getElementById("buttonSave");
    const background = document.getElementById("background")
    if(buttonNew.style.visibility == 'hidden'){
        buttonNew.style.visibility = 'visible';
        buttonSave.style.visibility = 'visible';
        background.style.visibility = 'visible';
    }
    else{
        buttonNew.style.visibility = 'hidden';
        buttonSave.style.visibility = 'hidden';
        background.style.visibility = 'hidden';
    }
}