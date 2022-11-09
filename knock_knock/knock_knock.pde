import g4p_controls.*;

import uibooster.*;
import uibooster.components.*;
import uibooster.model.*;
import uibooster.model.formelements.*;
import uibooster.model.options.*;
import uibooster.utils.*;




boolean locked = false;

PFont f;
PImage KnockPoster;
PImage Door1;
PImage Door2;
final String BACKGROUND115_IMAGE_FILE = "1152x648_1.15 Desks.png";
PImage backgroundImage115;
final String BACKGROUND122_IMAGE_FILE = "786x807_1.22 Desks.png";
PImage backgroundImage122;

UiBooster booster;
LoginCredentials credentials;

GWindow Map1= null, Map2 = null;
GButton button1,button2;



void setup() {
 size(700, 990);
 smooth(); 
 
 f=loadFont("AlBayan-Bold-48.vlw");  
 KnockPoster = loadImage("KnockPoster.png");
 backgroundImage115 = loadImage(BACKGROUND115_IMAGE_FILE);
 backgroundImage122 = loadImage(BACKGROUND122_IMAGE_FILE);
 Door1 = loadImage("Door1.jpg");
 Door2 = loadImage("Door2.jpg");
 
  //String[] args = {"TwoFrameTest"};
  //SecondApplet sa = new SecondApplet();
  //PApplet.runSketch(args, sa);
 
 
  
}

void draw(){
  background(KnockPoster);
  textFont(f,50); 
  
  fill(252, 186, 3);
  
  textAlign(CENTER, CENTER);
    if (credentials == null) {
    text("Welcome to Knock Knock"+"\n\nPlease, press the K ", width/2, 300);
  } else {  
    background(84,97,232);
    text("Hello," + "   "+ credentials.getUsername(), width/2, 220);
    text("Please choose your lab", width/2, 300);  
    text("1.15", 140,725);
    text("1.22", 550,725);
    boy();
    
    image(Door1,80,450);
    image(Door2,490,450);
    
    G4P.setDisplayFont("f", G4P.PLAIN, 20);
    GButton button1 = new GButton(this, 90, 500, 100, 50);
    button1.setText("Check-in");
    button1.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
    button1.addEventHandler(this, "button1_click");
    
    G4P.setDisplayFont("f", G4P.PLAIN, 20);
    GButton button2 = new GButton(this, 500, 500, 100, 50);
    button2.setText("Check-in");
    button2.setLocalColorScheme(GCScheme.ORANGE_SCHEME);  
    button2.addEventHandler(this, "button2_click");
  }


}
  
