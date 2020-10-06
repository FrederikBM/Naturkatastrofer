class Textbox2 {
  String Aar="";

  void addText(char c) {
    if (keyPressed && key == BACKSPACE && Aar.length()!=0) {
      Aar = Aar.substring( 0, Aar.length()-1 );
    } else if (key != BACKSPACE && key != SHIFT && key != TAB) {
      Aar = Aar+c;
      println(Aar);
      println("2002");
    }
    //println(keyCode);
  }

  void skriv() {
    rect(70, 100, 330, 30);
    fill(0);
    text(Aar, 75, 120);
    fill(255);
  }
}
