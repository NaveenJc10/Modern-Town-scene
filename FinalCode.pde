// TASK: Create a modern Town scene and mimic afternoon, night and midnight cycle.


//Initializing snow particles
float s1;
float s2;
float s3;
float s4;
float s5;
float s6;
float s7;
float s8;
float s9;
float s10;
float s11;
float s12;
float s13;
float s14;
float s15;

//Initializing speed of snow drop
float speedS1=1;
float speedS2=2;

//Initializing cars
float car1;
float car2;
float car3;

//Initializing car speed
float carSpeed=3;
int x,y;

void setup() {
size(600, 600);
noStroke();

//Setting the gap between snow falls
s1=-145;
s2=-235;
s3=-353;
s4=-74;
s5=-118;
s6=-226;
s7=-362;
s8=-485;
s9=-187;
s10=-350;
s11=-188;
s12=-419;
s13=-155;
s14=-342;
s15=-243;

//Setting the gap between cars
car1=0;
car2=-100;
car3=-200;


}

void draw() {

background(map(mouseX, 0, width, 75, 4),map(mouseX, 0, width, 214,20),map(mouseX, 0, width, 255,60));

//Invoking the draw functions
drawSun();
drawCars();
drawRocks();
drawReflection();
snowGround();
drawSnow();



//BUILDINGS
fill(0, 80);
rect(0, 290, 100, 200);
rect(120, 200, 100, 300);
rect(160, 150, 3, 50);
rect(410, 350, 200, 300);
rect(520, 300, 100, 50);

//WINDOWS FIRST BUILDING
fill(#FFF4D1, 70);
rect(10, 310, 10, 10);
rect(30, 330, 10, 10);
rect(10, 330, 10, 10);
rect(70, 330, 10, 10);
rect(70, 350, 10, 10);
rect(10, 410, 10, 10);
rect(10, 390, 10, 10);
rect(50, 390, 10, 10);

//WINDOWS BUILDING 2
rect(130, 220, 10, 10);
rect(170, 220, 10, 10);
rect(190, 220, 10, 10);
rect(190, 240, 10, 10);
rect(190, 260, 10, 10);
rect(170, 260, 10, 10);
rect(130, 260, 10, 10);
rect(170, 280, 10, 10);
rect(150, 280, 10, 10);
rect(190, 300, 10, 10);
rect(150, 340, 10, 10);
rect(130, 340, 10, 10);
rect(130, 360, 10, 10);
rect(170, 360, 10, 10);
rect(190, 420, 10, 10);
rect(150, 420, 10, 10);
rect(190, 400, 10, 10);
rect(170, 440, 10, 10);
rect(130, 470, 10, 10);
rect(150, 470, 10, 10);
rect(190, 470, 10, 10);

//WINDOWS BUILDING 3
rect(420, 370, 10, 10);
rect(440, 370, 10, 10);
rect(480, 370, 10, 10);
rect(500, 370, 10, 10);
rect(500, 390, 10, 10);
rect(460, 390, 10, 10);
rect(460, 410, 10, 10);
rect(480, 410, 10, 10);
rect(420, 410, 10, 10);
rect(500, 430, 10, 10);
rect(480, 430, 10, 10);
rect(420, 430, 10, 10);
rect(440, 470, 10, 10);
rect(420, 470, 10, 10);

//WINDOWS BUILDING 4
rect(530, 360, 10, 10);
rect(550, 340, 10, 10);
rect(530, 320, 10, 10);
rect(570, 320, 10, 10);
rect(550, 320, 10, 10);
rect(590, 380, 10, 10);
rect(590, 400, 10, 10);
rect(550, 380, 10, 10);
rect(530, 380, 10, 10);
rect(530, 420, 10, 10);
rect(550, 420, 10, 10);



//BRIDGE
fill(255, 150);
rect(0, 428, 600, 2);
fill(0);
quad(width/2+500, height/2+150, width/2+576, height/2+170, width/2-586, height/2+170, width/2-560, height/2+150);
rect(0, 430, 600, 5);
rect(20, 430, 5, 20);
rect(40, 430, 5, 20);
rect(60, 430, 5, 20);
rect(80, 430, 5, 20);
rect(100, 430, 5, 20);
rect(120, 430, 5, 20);
rect(140, 430, 5, 20);
rect(160, 430, 5, 20);
rect(180, 430, 5, 20);
rect(200, 430, 5, 20);
rect(220, 430, 5, 20);
rect(240, 430, 5, 20);
rect(260, 430, 5, 20);
rect(280, 430, 5, 20);
rect(300, 430, 5, 20);
rect(320, 430, 5, 20);
rect(340, 430, 5, 20);
rect(360, 430, 5, 20);
rect(380, 430, 5, 20);
rect(400, 430, 5, 20);
rect(420, 430, 5, 20);
rect(440, 430, 5, 20);
rect(460, 430, 5, 20);
rect(480, 430, 5, 20);
rect(500, 430, 5, 20);
rect(520, 430, 5, 20);
rect(540, 430, 5, 20);
rect(560, 430, 5, 20);
rect(580, 430, 5, 20);

//BRIDGE SHADOW
fill(0, 50);
rect(0, 505, 600, 10);

}

//SUN
void drawSun(){
fill(255, 10);
ellipse(450, 100, 140, 140);
ellipse(450, 100, 160, 160);
fill(#ffea00, 200);
ellipse(450, 100, 120, 120);

fill(map(mouseX, 0, width, 75, 4),map(mouseX, 0, width, 214,20),map(mouseX, 0, width, 255,60));
ellipse(mouseX, 100, 100, 100);
}

//CARS
void drawCars(){
car1 += carSpeed;
fill(170);
rect(car1,435,45,15);
car2 += carSpeed;
fill(170);
rect(car2,435,45,15);
car3 += carSpeed;
fill(170);
rect(car3,435,45,15);
if (car1 > width && car2 > width && car3 >width ) {
car1 = 0;
car1 += carSpeed;
fill(170);
rect(car1,435,45,15);
car2 = -100;
car2 += carSpeed;
fill(170);
rect(car2,435,45,15);
car3 = -200;
car3 += car3 + carSpeed;
fill(170);
rect(car3,435,45,15);
}
}

//ROCKS
void drawRocks(){
fill(0);
ellipse(width/2,500,80,25);

ellipse(width,500,180,120);
ellipse(537,500,160,60);
ellipse(484,500,160,30);

ellipse(0,500,180,120);
ellipse(70,500,160,45);
}

//REFLECTION
void drawReflection(){
stroke(255);
strokeWeight(2.5);
line(331,549,331+70,549);
strokeWeight(1.5);
line(388,558,388+30,558);
line(151,528,151+30,528);
noStroke();
fill(100, 150);
rect(0, 500, 600, 200);
}

void snowGround(){
fill(255);
ellipse(58,600,260,100);
ellipse(177,610,200,50);
}

//SNOW
void drawSnow(){
s1 += speedS1;
fill(#FFFFFF);
ellipse(50,s1,11,11);
s2 += speedS2;
fill(#FFFFFF);
ellipse(100,s2,10,10);
s3 += speedS1;
fill(#FFFFFF);
ellipse(150,s3,9,9);
s4 += speedS2;
fill(#FFFFFF);
ellipse(200,s4,10,10);
s5 += speedS1;
fill(#FFFFFF);
ellipse(250,s5,12,12);
s6 += speedS2;
fill(#FFFFFF);
ellipse(300,s6,11,11);
s7 += speedS1;
fill(#FFFFFF);
ellipse(350,s7,10,10);
s8 += speedS2;
fill(#FFFFFF);
ellipse(400,s8,8,8);
s9 += speedS1;
fill(#FFFFFF);
ellipse(450,s9,9,9);
s10 += speedS2;
fill(#FFFFFF);
ellipse(500,s10,10,10);
s11 += speedS1;
fill(#FFFFFF);
ellipse(550,s11,11,11);
s12 += speedS2;
fill(#FFFFFF);
ellipse(600,s12,10,10);
s13 += speedS2;
fill(#FFFFFF);
ellipse(650,s13,12,12);
s14 += speedS2;
fill(#FFFFFF);
ellipse(700,s14,10,10);
s15 += speedS2;
fill(#FFFFFF);
ellipse(750,s15,11,11);

if ( s11 >height ) {
s1 = -145;
s1 += speedS1;
fill(#FFFFFF);
ellipse(50,s1,11,11);
s2 = -235;
s2 += speedS2;
fill(#FFFFFF);
ellipse(100,s2,10,10);
s3 = -353;
s3 += speedS1;
fill(#FFFFFF);
ellipse(150,s3,9,9);
s4 = -75;
s4 += speedS2;
fill(#FFFFFF);
ellipse(200,s4,10,10);
s5 = -118;
s5 += speedS1;
fill(#FFFFFF);
ellipse(250,s5,12,12);
s6 = -226;
s6 += speedS2;
fill(#FFFFFF);
ellipse(300,s6,11,11);
s7 = -362;
s7 += speedS1;
fill(#FFFFFF);
ellipse(350,s7,10,10);
s8 = -485;
s8 += speedS2;
fill(#FFFFFF);
ellipse(400,s8,8,8);
s9 = -187;
s9 += speedS1;
fill(#FFFFFF);
ellipse(450,s9,9,9);
s10 = -350;
s10 += speedS2;
fill(#FFFFFF);
ellipse(500,s10,10,10);
s11= -188;
s11 += speedS1;
fill(#FFFFFF);
ellipse(550,s11,11,11);
s12= -419;
s12 += speedS2;
fill(#FFFFFF);
ellipse(600,s12,10,10);
s13= -155;
s13 += speedS2;
fill(#FFFFFF);
ellipse(650,s13,12,12);
s14= -342;
s14 += speedS2;
fill(#FFFFFF);
ellipse(700,s14,10,10);
s15= -243;
s15 += speedS2;
fill(#FFFFFF);
ellipse(750,s15,11,11);
}
}

//CONSOLE
void mousePressed(){
  println(mouseX,mouseY);
}
