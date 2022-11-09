public class SecondApplet extends PApplet {
  int rowOneDeskNumbers = 6;
  int rowTwoDeskNumbers = 6;
  int rowThreeDeskNumbers = 6;
  int rowFourDeskNumbers = 6;
  int rowFiveDeskNumbers = 6;
  RowOneButton [] buttonsOne = new RowOneButton[rowOneDeskNumbers];
  RowTwoButton [] buttonsTwo = new RowTwoButton[rowTwoDeskNumbers];
  RowThreeButton [] buttonsThree = new RowThreeButton[rowThreeDeskNumbers];
  RowFourButton [] buttonsFour = new RowFourButton[rowFourDeskNumbers];
  RowFiveButton [] buttonsFive = new RowFiveButton[rowFiveDeskNumbers];
  color[] colors = {#FF0000,#00FF00};
  
  Form form;
  
  public void settings() {
    size(1152,648);
   for(int i=0; i<rowOneDeskNumbers; i++){
      buttonsOne[i] = new RowOneButton( "t",60+i*172,38,171,62,colors[1],colors[0]);
      }
      buttonsOne[0].setName("1");
      buttonsOne[1].setName("2");
      buttonsOne[2].setName("3");
      buttonsOne[3].setName("4");
      buttonsOne[4].setName("5");
      buttonsOne[5].setName("6");
      buttonsOne[0].regColor = colors[1];
      
   for(int i=0; i<rowTwoDeskNumbers; i++){
      buttonsTwo[i] = new RowTwoButton( "t",60+i*172,164,171,62,colors[1],colors[0]);
      }
      buttonsTwo[0].setName("7");
      buttonsTwo[1].setName("8");
      buttonsTwo[2].setName("9");
      buttonsTwo[3].setName("10");
      buttonsTwo[4].setName("11");
      buttonsTwo[5].setName("12");
      buttonsTwo[0].regColor = colors[1];
      
   for(int i=0; i<rowThreeDeskNumbers; i++){
      buttonsThree[i] = new RowThreeButton( "t",60+i*172,286,171,62,colors[1],colors[0]);
    }
    buttonsThree[0].setName("13");
    buttonsThree[1].setName("14");
    buttonsThree[2].setName("15");
    buttonsThree[3].setName("16");
    buttonsThree[4].setName("17");
    buttonsThree[5].setName("18");
    buttonsThree[0].regColor = colors[1];
    
    for(int i=0; i<rowFourDeskNumbers; i++){
      buttonsFour[i] = new RowFourButton( "t",60+i*172,406,171,62,colors[1],colors[0]);
    }
    buttonsFour[0].setName("19");
    buttonsFour[1].setName("20");
    buttonsFour[2].setName("21");
    buttonsFour[3].setName("22");
    buttonsFour[4].setName("23");
    buttonsFour[5].setName("24");
    buttonsFour[0].regColor = colors[1];
    
    for(int i=0; i<rowFiveDeskNumbers; i++){
      buttonsFive[i] = new RowFiveButton( "t",60+i*172,528,171,62,colors[1],colors[0]);
    }
    buttonsFive[0].setName("25");
    buttonsFive[1].setName("26");
    buttonsFive[2].setName("27");
    buttonsFive[3].setName("28");
    buttonsFive[4].setName("29");
    buttonsFive[5].setName("30");
    buttonsFive[0].regColor = colors[1];
      
    }
  public void draw() {
    background(backgroundImage115);
    update(mouseX, mouseY);
    for(int i=0; i<rowOneDeskNumbers; i++){
    buttonsOne[i].display();
      }
    for(int i=0; i<rowTwoDeskNumbers; i++){
      buttonsTwo[i].display();
    }
    for(int i=0; i<rowThreeDeskNumbers; i++){
      buttonsThree[i].display();
    }
    for(int i=0; i<rowFourDeskNumbers; i++){
      buttonsFour[i].display();
    }
    for(int i=0; i<rowFiveDeskNumbers; i++){
      buttonsFive[i].display();
    }
  
  
}

void update(int x, int y){
  if(locked == false) {
    for(int i=0; i<rowOneDeskNumbers; i++){
       buttonsOne[i].update();
    }
    for(int i=0; i<rowTwoDeskNumbers; i++){
       buttonsTwo[i].update();
    }
    for(int i=0; i<rowThreeDeskNumbers; i++){
       buttonsThree[i].update();
    }
    for(int i=0; i<rowFourDeskNumbers; i++){
       buttonsFour[i].update();
    }
    for(int i=0; i<rowFiveDeskNumbers; i++){
       buttonsFive[i].update();
    }
  }
  else {
    locked = false;
  }
}

void mousePressed() {
    for(int i=0; i<rowOneDeskNumbers; i++){
      if(buttonsOne[i].pressed()) {
          form = new UiBooster().createForm("Desk Request")
              .addLabel("Choose an action")
              .addSelection("What would you like to do?", "Check-In", "Check-Out")
              .show();
              
              String check = form.getByIndex(1).asString();
              if (check.equals("Check-In")){
                  buttonsOne[i].regColor = colors[0];
                  new UiBooster().showInfoDialog("You have been Checked-In");
              }
              else if (check.equals("Check-Out")){
                  buttonsOne[i].regColor = colors[1];
                  new UiBooster().showInfoDialog("You have been Checked-Out");
              }
      }
    }
    for(int i=0; i<rowTwoDeskNumbers; i++){
      if(buttonsTwo[i].pressed()) {
          form = new UiBooster().createForm("Desk Request")
              .addLabel("Choose an action")
              .addSelection("What would you like to do?", "Check-In", "Check-Out")
              .show();
              
              String check = form.getByIndex(1).asString();
              if (check.equals("Check-In")){
                  buttonsTwo[i].regColor = colors[0];
                  new UiBooster().showInfoDialog("You have been Checked-In");                  
              }
              else if (check.equals("Check-Out")){
                  buttonsTwo[i].regColor = colors[1];
                  new UiBooster().showInfoDialog("You have been Checked-Out");
              }
      }
    }
     for(int i=0; i<rowThreeDeskNumbers; i++){
      if(buttonsThree[i].pressed()) {
          form = new UiBooster().createForm("Desk Request")
              .addLabel("Choose an action")
              .addSelection("What would you like to do?", "Check-In", "Check-Out")
              .show();
              
              String check = form.getByIndex(1).asString();
              if (check.equals("Check-In")){
                  buttonsThree[i].regColor = colors[0];
                  new UiBooster().showInfoDialog("You have been Checked-In");
              }
              else if (check.equals("Check-Out")){
                  buttonsThree[i].regColor = colors[1];
                  new UiBooster().showInfoDialog("You have been Checked-Out");
              }
      }
    }
     for(int i=0; i<rowFourDeskNumbers; i++){
      if(buttonsFour[i].pressed()) {
          form = new UiBooster().createForm("Desk Request")
              .addLabel("Choose an action")
              .addSelection("What would you like to do?", "Check-In", "Check-Out")
              .show();
              
              String check = form.getByIndex(1).asString();
              if (check.equals("Check-In")){
                  buttonsFour[i].regColor = colors[0];
                  new UiBooster().showInfoDialog("You have been Checked-In");
              }
              else if (check.equals("Check-Out")){
                  buttonsFour[i].regColor = colors[1];
                  new UiBooster().showInfoDialog("You have been Checked-Out");
              }
      }
    }
     for(int i=0; i<rowFiveDeskNumbers; i++){
      if(buttonsFive[i].pressed()) {
          form = new UiBooster().createForm("Desk Request")
              .addLabel("Choose an action")
              .addSelection("What would you like to do?", "Check-In", "Check-Out")
              .show();
              
              String check = form.getByIndex(1).asString();
              if (check.equals("Check-In")){
                  buttonsFive[i].regColor = colors[0];
                  new UiBooster().showInfoDialog("You have been Checked-In");
              }
              else if (check.equals("Check-Out")){
                  buttonsFive[i].regColor = colors[1];
                  new UiBooster().showInfoDialog("You have been Checked-Out");
              }
      }
    }
}

class Button
{
  String Name;
  int posX, posY;
  int sizeX;
  int sizeY;
  color buttonColor,regColor,highlightColor;
  boolean over = false;
  boolean pressed = true;
  boolean toggle = false;
 
  void setName(String Name){this.Name = Name;}

 void update()
  {
    if(over()) { buttonColor = highlightColor;
    }
    else { buttonColor = regColor;
    }
  }

  boolean pressed()
  {
    if(over) {
     locked = true;
     regColor = highlightColor;
      return true;
    }
    else {
      locked = false;
      regColor = regColor;
      return false;
    }
  }
  boolean over()
  {
    return true;
  }
}
class RowOneButton extends Button
{
  RowOneButton(String Name,int posX, int posY, int sizeX, int sizeY, color regColor, color highlightColor)
  {
    this.Name = Name;
    this.posX = posX;
    this.posY = posY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.regColor = regColor;
    this.highlightColor = highlightColor;
    this.buttonColor = regColor;
  }
  boolean overRect(int x, int y, int width, int height)
  {
    if (mouseX >= x && mouseX <= x+width &&
      mouseY >= y && mouseY <= y+height) {
        return true;
    }
    else {
      return false;
    }
  }
  boolean over()
  {
    if( overRect(posX, posY, sizeX, sizeY) ) {
      over = true;
      return true;
    }
    else {
      over = false;
      return false;
    }
  }
  void display()
  {
    stroke(0);
    fill(buttonColor);
    rect(posX, posY, sizeX, sizeY);
    fill(0);
    textAlign(CENTER);
    text(Name,posX+sizeX/2,posY+sizeY/2+5);
  }
}
class RowTwoButton extends Button
{
  RowTwoButton(String Name,int posX, int posY, int sizeX, int sizeY, color regColor, color highlightColor)
  {
    this.Name = Name;
    this.posX = posX;
    this.posY = posY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.regColor = regColor;
    this.highlightColor = highlightColor;
    this.buttonColor = regColor;
  }
  boolean overRect(int x, int y, int width, int height)
  {
    if (mouseX >= x && mouseX <= x+width &&
      mouseY >= y && mouseY <= y+height) {
        return true;
    }
    else {
      return false;
    }
  }
  boolean over()
  {
    if( overRect(posX, posY, sizeX, sizeY) ) {
      over = true;
      return true;
    }
    else {
      over = false;
      return false;
    }
  }
  void display()
  {
    stroke(0);
    fill(buttonColor);
    rect(posX, posY, sizeX, sizeY);
    fill(0);
    textAlign(CENTER);
    text(Name,posX+sizeX/2,posY+sizeY/2+5);
  }
}
class RowThreeButton extends Button
{
  RowThreeButton(String Name,int posX, int posY, int sizeX, int sizeY, color regColor, color highlightColor)
  {
    this.Name = Name;
    this.posX = posX;
    this.posY = posY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.regColor = regColor;
    this.highlightColor = highlightColor;
    this.buttonColor = regColor;
  }
  boolean overRect(int x, int y, int width, int height)
  {
    if (mouseX >= x && mouseX <= x+width &&
      mouseY >= y && mouseY <= y+height) {
        return true;
    }
    else {
      return false;
    }
  }
  boolean over()
  {
    if( overRect(posX, posY, sizeX, sizeY) ) {
      over = true;
      return true;
    }
    else {
      over = false;
      return false;
    }
  }
  void display()
  {
    stroke(0);
    fill(buttonColor);
    rect(posX, posY, sizeX, sizeY);
    fill(0);
    textAlign(CENTER);
    text(Name,posX+sizeX/2,posY+sizeY/2+5);
  }
}
class RowFourButton extends Button
{
  RowFourButton(String Name,int posX, int posY, int sizeX, int sizeY, color regColor, color highlightColor)
  {
    this.Name = Name;
    this.posX = posX;
    this.posY = posY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.regColor = regColor;
    this.highlightColor = highlightColor;
    this.buttonColor = regColor;
  }
  boolean overRect(int x, int y, int width, int height)
  {
    if (mouseX >= x && mouseX <= x+width &&
      mouseY >= y && mouseY <= y+height) {
        return true;
    }
    else {
      return false;
    }
  }
  boolean over()
  {
    if( overRect(posX, posY, sizeX, sizeY) ) {
      over = true;
      return true;
    }
    else {
      over = false;
      return false;
    }
  }
  void display()
  {
    stroke(0);
    fill(buttonColor);
    rect(posX, posY, sizeX, sizeY);
    fill(0);
    textAlign(CENTER);
    text(Name,posX+sizeX/2,posY+sizeY/2+5);
  }
}
class RowFiveButton extends Button
{
  RowFiveButton(String Name,int posX, int posY, int sizeX, int sizeY, color regColor, color highlightColor)
  {
    this.Name = Name;
    this.posX = posX;
    this.posY = posY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.regColor = regColor;
    this.highlightColor = highlightColor;
    this.buttonColor = regColor;
  }
  boolean overRect(int x, int y, int width, int height)
  {
    if (mouseX >= x && mouseX <= x+width &&
      mouseY >= y && mouseY <= y+height) {
        return true;
    }
    else {
      return false;
    }
  }
  boolean over()
  {
    if( overRect(posX, posY, sizeX, sizeY) ) {
      over = true;
      return true;
    }
    else {
      over = false;
      return false;
    }
  }
  void display()
  {
    stroke(0);
    fill(buttonColor);
    rect(posX, posY, sizeX, sizeY);
    fill(0);
    textAlign(CENTER);
    text(Name,posX+sizeX/2,posY+sizeY/2+5);
  }
}


}

  
  
   
