public class TextBox {

    //variabler
    float positionX, positionY, sizeX, sizeY;
    float mouseX, mouseY;
    String textBoxNavn;
    String input; //dit navn består af en masse bogstaver <3

    boolean klikket = false;
    boolean acceptLetters = true;

    TextBox( int posX, int posY, int sizeX, int sizeY, String text ) {
        positionX = posX;
        positionY = posY;
        this.sizeX = sizeX;
        this.sizeY = sizeY;
        this.textBoxNavn = text;

    }

    void KlikTjek(float mouseX, float mouseY) {
        this.mouseX = mouseX;
        this.mouseY = mouseY;
        if (mousePressed){
            if(     mouseX > positionX &&
                    mouseX < positionX + sizeX &&
                    mouseY > positionY &&
                    mouseY < positionY + sizeY) {
                klikket=true;
            }else {
                klikket=false;
            }
            println("klikket");
        }
    }

    void tegnTextBox() {
        stroke(1, 46, 74, 100);
        fill(227, 225, 252, 250);
        rect(positionX, positionY, sizeX, sizeY);

        if(klikket){
            if(keyPressed){
                input = input + key;
            }
        }
    }
    
    void setAcceptLetter(boolean accept) {
        acceptLetters = accept;
    }

    void keyindput(char key) {

        if(klikket ){
            if(key == BACKSPACE && input.length() > 0){

                input =input.substring(0,input.length()-1);
            } else {
                if ((!acceptLetters && key >= '0' && key <= '9') || acceptLetters)
                input = input + key;
            }

        }
        println(input);
    }
}
