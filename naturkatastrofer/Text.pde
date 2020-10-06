class Textbox1{
String Land="";

void addText(char c){
  if(keyPressed && key == BACKSPACE && Land.length()!=0 ){
    Land = Land.substring( 0, Land.length()-1 );
  } else if(key == BACKSPACE || key == SHIFT && key == TAB){
    
  }
  else {
  Land = Land+c;
  println(Land);
  }
  //println(keyCode);
}

void skriv(){
  rect(70,50,330,30);
  fill(0);
  text(Land,75,70);
  fill(255);
}
}
