class Project{
  String name;
  String fileName;
  String[] file;
  ArrayList<Token>tokens = new ArrayList<Token>();
  void load(){
    file = loadStrings("projects/"+fileName);
    process();
  }
  void process(){
    for(int i=0;i<file.length;i+=2){
      String qwestion = file[i].substring(2);
      String answer = file[i+1].substring(2);
      Token a = new Token(qwestion,answer);
      tokens.add(a);
    }
  }
}
class Token{
  String qwestion, ansfer;
  Token(String qwestion, String ansfer){
    this.qwestion = qwestion;
    this.ansfer = ansfer;
  }
}
