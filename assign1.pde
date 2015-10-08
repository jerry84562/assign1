/*
bg1 640*480
bg2 640*480
enemy 60*60
fighter 50*50
hp 210*30
treasure 40*40

update:2015/10/8
*/


PImage bg1Img;
PImage bg2Img;
PImage enemyImg;
PImage fighterImg;
PImage hpImg;
PImage treasureImg;

int a, b, c, d, e, f, g, h, i, j, k;
void setup(){
  size(640,480);
  stroke(255,0,0);  //red (hp stroke)
  bg1Img=loadImage("img/bg1.png");
  bg2Img=loadImage("img/bg2.png");
  enemyImg=loadImage("img/enemy.png");
  treasureImg=loadImage("img/treasure.png");
  fighterImg=loadImage("img/fighter.png");
  hpImg=loadImage("img/hp.png");
  
  
  a=0;  //enemy
  b=floor(random(420));  //480-60 enemy
  c=floor(random(600));  //640-40 treasure
  d=floor(random(440));  //480-40 treasure
  e=590;  // 640-50 fighter
  f=240;  // 480/2 fighter
  g=0;  //hp
  h=0;  //hp
  i=floor(random(0,200));  //red hp
  j=1;  //bg1
  k=-639;  //bg2
}

void draw(){
  if(j==639){j=-639;}
  if(k==639){k=-639;}
  a%=640;
  
  image(bg1Img,j++,0);
  image(bg2Img,k++,0);
  image(enemyImg,a+=3,b);
  image(treasureImg,c,d);
  image(fighterImg,e,f);
  fill(255,0,0);  //red
  rect(10,10,i,20);
  image(hpImg,g,h);
}
