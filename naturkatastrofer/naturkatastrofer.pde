Table table;
TextBox lande;
TextBox aar;
int year = 7; //året er sat til 2010. Minimum er 3 for 2014, og for hvert år under 2010 lægger man bare 1 til.

void setup() {
  size(500,500);
  
  lande = new TextBox(width / 4, (int) (height / 12 + height / 6 ), width / 2, height / 12, "Land");
aar = new TextBox(width / 4, (int) (height / 12 + height / 6 + (((width / 13)+ height / 12))), width / 2, height / 12, "År");
ArrayList<String> land = new ArrayList<String>();
  
  table = loadTable("DeathsNaturalDisasters.csv"); 
  for(int i = 0; i<table.getRowCount();i++){
    if(i==214){  
      break;
    }
  println("Deaths in " + table.getRow(i+1).getString(1) + " in 2010: " + table.getRow(i+1).getInt(year));
  }
}

void draw(){
  Felt();
}

void Felt(){
  lande.tegnTextBox();
  aar.tegnTextBox();  
}

 void mouseClicked() {
        lande.KlikTjek(mouseX,mouseY);
        aar.KlikTjek(mouseX,mouseY);
    }
    
   void keyTyped() {
        lande.keyindput(key);
        aar.keyindput(key);
    }
