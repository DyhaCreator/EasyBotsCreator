class Menus{
  void openMenuGraph(int size){
    fill(50);
    rect(0,0,width,70);
    for(int i=0;i<size;i++){
      rect(40,100*(i)+90,width-80,90);
    }
    fill(200);
    textSize(30);
    text("Open or create",15,42);
  }
  void openMenuButtons(String[] projects){
    cp5.setFont(createFont("Consolas",50));
    cp5.addButton("btnAddBot").setPosition(width-70,0).setSize(70,70).setLabel("+");
    cp5.setFont(createFont("Consolas",25));
    for(int i=0;i<projects.length;i++){
      String name = projects[i];
      cp5.addButton("btnProj"+i).setLabel(name).setPosition(50,100*(i+1)).setSize(width/4,70);
    }
  }
  void closeMenuButtons(String[] projects){
    cp5.addButton("btnAddBot").hide();
    for(int i=0;i<projects.length;i++){
      cp5.addButton("btnProj"+i).hide();
    }
  }
  void menuCreateBot(){
    noStroke();
    fill(50);
    rect(0,0,width,40);
    rect(0,0,70,height);
    fill(200);
    textSize(30);
    textAlign(CENTER);
    text(proj.fileName,width/2,30);
  }
  void menuCreateBotButtons(){
    cp5.addButton("qwestions")
      .setLabel("?")
      .setPosition(0,41)
      .setSize(70,70)
      .setColorBackground(color(50))
      .setColorForeground(color(50));
    cp5.addButton("vars")
      .setLabel("%")
      .setPosition(0,112)
      .setSize(70,70)
      .setColorBackground(color(50))
      .setColorForeground(color(50));
    cp5.addButton("settings")
      .setLabel("#")
      .setPosition(0,183)
      .setSize(70,70)
      .setColorBackground(color(50))
      .setColorForeground(color(50));
    cp5.addButton("File")
      .setPosition(0,0)
      .setSize(100,40)
      .setLabel("File")
      .setColorBackground(color(50))
      .setColorForeground(color(50));
  }
  void menuFileGraph(){
    stroke(100);
    fill(40);
    rect(100,70,200,100,10);
  }
  void menuFileButtons(){
    cp5.addButton("save")
      .setPosition(110,80)
      .setSize(180,39)
      .setLabel("Save")
      .setColorBackground(color(40));
    cp5.addButton("new")
      .setPosition(110,120)
      .setSize(180,39)
      .setLabel("New")
      .setColorBackground(color(40));
  }
  void deleteMenuFileButtons(){
    cp5.addButton("save").hide();
    cp5.addButton("new").hide();
  }
  void qwestionsGraph(){
    
  }
}
