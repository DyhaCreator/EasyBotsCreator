import controlP5.*;
ControlP5 cp5;
Menus menus = new Menus();
Project proj = new Project();
String[] projects;
int menuId = 0;
int oldWidth = 0;
void setup(){
  size(800,600);
  surface.setResizable(true);
  cp5 = new ControlP5(this);
  noStroke();
  projects = loadStrings("base_proj.base");
  menus.openMenuButtons(projects);
}
void draw(){
  background(30);
  if(menuId==0){
    menus.openMenuGraph(projects.length);
  }
  else if(menuId==1){
    menus.menuCreateBot();
  }
  else if(menuId==2){
    menus.menuCreateBot();
    menus.menuFileGraph();
  }
  else if(menuId==3){
    menus.menuCreateBot();
    menus.qwestionsGraph();
  }
  //здесь проверяем размеры экрана
  if(width!=oldWidth){
    if(menuId==0){
      menus.openMenuButtons(projects);
    }
    else if(menuId==1){
      menus.menuCreateBotButtons();
    }
    else if(menuId==2){
      menus.deleteMenuFileButtons();
      menuId=1;
    }
    oldWidth=width;
  }
}
void btnProj0(){
  menuId=1;
  proj.name = projects[0];
  proj.fileName = projects[0];
  proj.load();
  menus.menuCreateBotButtons();
  menus.closeMenuButtons(projects);
}
void File(){
  if(menuId!=2){
    menuId=2;
    menus.menuFileButtons();
  }
  else{
    menuId=1;
    menus.deleteMenuFileButtons();
  }
}
void qwestions(){
  menuId=3;
}
