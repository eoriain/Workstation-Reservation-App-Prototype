void boy(){
 noStroke();
 fill(255,212,202);
 ellipse(250,570,30,40);
 ellipse(450,570,30,40);
 
 fill(255,232,222);
 ellipse(width/2,555,200,200);
 
 rect(330,550,40,130);
 
 fill(255,195,161);
 triangle(350,550,335,600,365,600);
 
 fill(255,180,180,80);
 ellipse(300,590,40,20);
 ellipse(400,590,40,20);
 
 stroke(0);
 strokeWeight(8);
 
 line(280,517,320,517);
 line(380,517,420,517);
 
 //line(310,505,300,550);
 //line(290,510,300,550);
 //line(270,520,300,550);
 
 //line(430,525,390,550);
 //line(400,510,390,550);
 //line(370,510,390,550);
 
 noStroke();
 fill(214, 56, 56);
 ellipse(width/2,625,70,10);
 
 noStroke();
 fill(255);
 rect(335,620,12,15);
 rect(350,620,12,15);
 
 noStroke();
 fill(0);
 arc(350,510,220,200,radians(180),radians(360));
 
 noStroke();
 fill(255,232,222);
 triangle(370,470,350,510,380,510);

 noStroke();
 eye(300,550);
 eye(390,550);
 
}

void eye(int x, int y){
  float a;
  a = atan2(mouseY-y, mouseX - x);
  fill(255,255,255);
  ellipse(x,y,50,50);
  fill(0);
  ellipse(x+13*cos(a),y+13*sin(a),25,25);
}
