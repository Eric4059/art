color red = #FF1F1F;
color blue = #3151FF;
color yellow = #FFF812;
color green = #4BB229;
color purple = #9400FF;
color black = #000000;
color white = #FFFFFF;
int x = 15;
int y = 10;
int w = 120;
int l = 40;

color chosencolor;





void setup() {
  size(1000, 800); 
  background(white);
  stroke(0);
}





void draw() {
  stroke(0);
  strokeWeight(2);
  fill(#797979);
  rect(0, 0, 150, 800);

  //buttons
  strokeWeight(5);

  fill(red);
  rect(15, 10, 120, 40);

  fill(blue);
  rect(15, 60, 120, 40);

  fill(yellow);
  rect(15, 110, 120, 40);

  fill(purple);
  rect(15, 160, 120, 40);

  fill(green);
  rect(15, 210, 120, 40);

  fill(black);
  rect(15, 260, 120, 40);

  fill(white);
  rect(15, 310, 120, 40);
  
  //slider
  line(75, 380, 75, 600);
  circle(75, 480, 30);
  
}


void mouseReleased() {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+l){
     chosencolor = red;
  }
  if (mouseX > x && mouseX < x+w && mouseY > y+50 && mouseY < y+l+50){
     chosencolor = blue;
  }
  if (mouseX > x && mouseX < x+w && mouseY > y+100 && mouseY < y+l+100){
     chosencolor = yellow;
  }
  if (mouseX > x && mouseX < x+w && mouseY > y+150 && mouseY < y+l+150){
     chosencolor = purple;
  }
  if (mouseX > x && mouseX < x+w && mouseY > y+200 && mouseY < y+l+200){
     chosencolor = green;
  }
  if (mouseX > x && mouseX < x+w && mouseY > y+250 && mouseY < y+l+250){
     chosencolor = black;
  }
  if (mouseX > x && mouseX < x+w && mouseY > y+300 && mouseY < y+l+300){
     chosencolor = white;
  }
  }

  void mouseDragged() {
    if (mouseX >= 150) {
      stroke(chosencolor);
      line(pmouseX, pmouseY, mouseX, mouseY);
    }
    
    
  }
