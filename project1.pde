int x = 100;
int speed = 2;
int y = 440;
int posX = 0;
int i = 0;
int xx = 0;
int xxx = 200;
int x4 = 0;
void setup(){
 size(500,500);
}

void draw(){
  
  frameRate(20);
  background(#030F50);
  drawBackground();
  if (i < 800){  
  moveGhost();
  count();
  } 
  if (i > 200){
    moveBat();
     bat();
  }
  if (i > 300){
    movePumpkin();
    pumpkin();
  }
  if (i > 500){
    moveWitch();
    witch();
  }
  if (i == 800){
    moveGhostgirl();
     ghostgirl();
  }
  
  ghost();


  

 



  
}

int count(){
    i = i + 1;
    return i;
}





void ghostgirl(){
   strokeWeight(0);
   // Ghost Body
      stroke(255);
      fill(255);
      strokeWeight(2);
      beginShape();
      vertex(xxx+200, y);
      vertex(xxx+200, y-30);
      vertex(xxx+201, y-32);
      vertex(xxx+202, y-34);
      vertex(xxx+203, y-36);
      vertex(xxx+205, y-38);
      vertex(xxx+206, y-40);
      vertex(xxx+225, y-40);
      vertex(xxx+226, y-38);
      vertex(xxx+227, y-36);
      vertex(xxx+228, y-34);
      vertex(xxx+229, y-32);
      vertex(xxx+230, y-30);
      vertex(xxx+230, y);
      vertex(xxx+229, y+10);
      vertex(xxx+227, y+12);
      vertex(xxx+225, y+14);
      vertex(xxx+223, y+12);
      vertex(xxx+221, y+10);
      vertex(xxx+219, y+12);
      vertex(xxx+217, y+14);
      vertex(xxx+215, y+16);
      vertex(xxx+213, y+14);
      vertex(xxx+211, y+12);
      vertex(xxx+219, y+10);
      vertex(xxx+207, y+12);
      vertex(xxx+205, y+14);
      vertex(xxx+203, y+12);
      vertex(xxx+201, y+10);
      vertex(xxx+200,y);
      endShape();
     //eyes
     fill(0);
     noStroke();
     ellipse(xxx+210, y-20, 8,15);
     ellipse(xxx+224, y-20, 8,15);
     //bow
     fill(#FF507C);
     ellipse(xxx+210, y-40, 6,6);
     triangle(xxx+200, y-35, xxx+205, y-40, xxx+200, y-45);
     triangle(xxx+220, y-35, xxx+215, y-40, xxx+220, y-45);
     
     

}

void drawBackground(){
  strokeWeight(0);
   noStroke();
  //sidewalk
  for (int x = 0; x < width; x = x + 50){
    fill(#D7E0D8);
    stroke(0);
    rect(x, 460, 100, height-460);
  }
  //grass
    for (int x = 0; x < width; x = x + 7){
    fill(#056411);
    triangle(x + 5, 450, x, 460, x + 10, 460);
  }
  //stars
  stroke(255);
  strokeWeight(1);

  for(int x = 0; x < width; x = x + int(random(0, width))){
    for (int y = 0; y < 400; y = y + int(random(0, 400))){
      point(x, y);
 
    }
}
  //moon 
  noStroke();
  strokeWeight(0);
  fill(#AAB3C1);
  ellipse(100,100, 100, 100);
  //craters
  fill(#99A0AA);
  ellipse(70,80, 10, 10);
  ellipse(110, 120, 5, 5);
  ellipse(125, 85, 15, 15);
}

void bat(){
  noStroke();
  fill(0);
  //body
  ellipse(posX+400, y-200, 30, 30);
  //wings
  triangle(posX+370, y-190, posX+400, y-200, posX+370, y-210);
  triangle(posX+430, y-190, posX+400, y-200, posX+430, y-210);
  //eyes
  fill(255);
  ellipse(posX+395, y-202, 5, 5);
  ellipse(posX+405, y-202, 5, 5);
  //fangs
  fill(#FF0A1F);
  triangle(posX+394, y-195, posX+395, y-190, posX+397, y-195);
  triangle(posX+404, y-195, posX+405, y-190, posX+407, y-195);
}

void pumpkin(){
 noStroke();
 fill(#FFB012);
 ellipse(xx+400, y+10, 30, 30);
 fill(#2B7C04);
 rect(xx+395, y-15, 10, 10);
}

void moveGhost(){
 if (x < width){
     x=x+ speed;
     } else {
       x = 0;
     } 
}
void moveBat(){
  posX = posX - 3;
}

void movePumpkin(){
  xx = xx - 3;
}

void moveGhostgirl(){
  if (xxx > width/2 - 200){
    xxx = xxx - 3;
  }
}

void moveWitch(){
  x4 = x4 - 3; 
}

void ghost(){
  strokeWeight(0);
  // Ghost Body
      stroke(255);
      fill(255);
      strokeWeight(2);
      beginShape();
      vertex(x, y);
      vertex(x, y-30);
      vertex(x+1, y-32);
      vertex(x+2, y-34);
      vertex(x+3, y-36);
      vertex(x+5, y-38);
      vertex(x+6, y-40);
      vertex(x+25, y-40);
      vertex(x+26, y-38);
      vertex(x+27, y-36);
      vertex(x+28, y-34);
      vertex(x+29, y-32);
      vertex(x+30, y-30);
      vertex(x+30, y);
      vertex(x+29, y+10);
      vertex(x+27, y+12);
      vertex(x+25, y+14);
      vertex(x+23, y+12);
      vertex(x+21, y+10);
      vertex(x+19, y+12);
      vertex(x+17, y+14);
      vertex(x+15, y+16);
      vertex(x+13, y+14);
      vertex(x+11, y+12);
      vertex(x+9, y+10);
      vertex(x+7, y+12);
      vertex(x+5, y+14);
      vertex(x+3, y+12);
      vertex(x+1, y+10);
      vertex(x,y);
      endShape();
     //eyes
     fill(0);
     noStroke();
     ellipse(x+10, y-20, 8,15);
     ellipse(x+24, y-20, 8,15);
}

void witch(){
   //broom
   strokeWeight(8);
   stroke(#AA6016);
   line(x4+400, y-300, x4+500, y-300);
   strokeWeight(2);
   stroke(#D89551);
   line(x4+500, y-300, x4+540, y-280);
   line(x4+500, y-300, x4+540, y-290);
   line(x4+500,y-300, x4+540, y-300);
   line(x4+500, y-300, x4+540, y-310);
   line(x4+500,y-300, x4+540, y-320);
   //dress
   noStroke();
   fill(#5808A0);
   triangle(x4+450, y-304, x4+470, y-330, x4+490, y-304);
   //head
   fill(#53ED07);
   ellipse(x4+470, y-340, 20, 20);
   //hat
   fill(0);
   ellipse(x4+470, y-345, 30, 10);
   triangle(x4+465, y-345, x4+470, y-365, x4+475, y-345);
   //eye
   fill(255);
   ellipse(x4+465, y-338, 3,3);
}
