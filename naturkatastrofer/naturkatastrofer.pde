Table table;
ArrayList<String> land = new ArrayList<String>();
int year = 7; //året er sat til 2010. Minimum er 3 for 2014, og for hvert år under 2010 lægger man bare 1 til.

void setup() {
  size(250, 250);
  table = loadTable("DeathsNaturalDisasters.csv"); 
  for(int i = 0; i<table.getRowCount();i++){
    if(i==214){
      break;
    }
  println("Deaths in " + table.getRow(i+1).getString(1) + " in 2010: " + table.getRow(i+1).getInt(year));
  }
}
