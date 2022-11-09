void button1() {
    button1.addEventHandler(this, "button1_click");  
    }

void button1_click(GButton source, GEvent event) {
  if (locked = true) {
    if(locked){
      String[] args = {"TwoFrameTest"};
      SecondApplet sa = new SecondApplet();
      PApplet.runSketch(args, sa);
      locked = false;
  } else {
      locked = true;
  }
}
  
}

void button2_click(GButton source, GEvent event) {
  if (locked = true) {
    if(locked){
      String[] args = {"ThirdFrameTest"};
      ThirdApplet sa = new ThirdApplet();
      PApplet.runSketch(args, sa);
      locked = false;
  } else {
      locked = true;
  }
}
}
