

float x=0,y=0,t=0,vx=0,vy=0,vx0=0,vy0=0;
float g =0.9;
boolean alreadyPressed = false;
int posx,posy;
int colour1 = 0;
int colour2 = 0;
int colour3 = 0;


void setup(){
  size(800,600);
  frameRate(30);
  y = height;
}


void draw(){
    background(255);
    strokeWeight(2);
    stroke(0);
    line(0,height,mouseX,mouseY);
    parabola();
    
}

void parabola(){
    if (alreadyPressed){
      vx0 = posx/9;
      vy0 = -(height - posy)/9;
      vx = vx0;
      x = vx*t;
      vy = vy0 + g * t;
      y = vy *t;
      t += 0.5;
      stroke(colour1,colour2,colour3);
      fill(colour1,colour2,colour3);
      ellipse(x,y+height,15,15);
      if ( y > height || x > width){
         mousePressed();
         t = 0;
         colour1 = int(random(255));
         colour2 = int(random(255));
         colour3 = int(random(255));
      }
    }
}
void mousePressed(){
  posx = mouseX;
  posy = mouseY;
  alreadyPressed = false;
}

void mouseReleased(){
   alreadyPressed =true;
}