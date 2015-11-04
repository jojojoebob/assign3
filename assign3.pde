PImage start1,start2,img1,img2,enemy,fighter,hp,treasure,end1,end2;
int g1,g2,fx,fy,ex,ey,tx,ty,lift,gameState,boo;
final int GAMESTART=0,GAMERUN=1,GAMELOSE=2;
boolean up=false,down=false,left=false,right=false;
void setup () 
{
  size(640,480);
  start1=loadImage("img/start1.png");
  start2=loadImage("img/start2.png");
  img1=loadImage("img/bg1.png");
  img2=loadImage("img/bg2.png");
  enemy=loadImage("img/enemy.png");
  fighter=loadImage("img/fighter.png");
  hp=loadImage("img/hp.png");
  treasure=loadImage("img/treasure.png"); 
  end1=loadImage("img/end1.png");
  end2=loadImage("img/end2.png");
  g1=0;
  g2=640;
  fx=width-50; 
  fy=height/2-25;
  tx=floor(random(550));
  ty=floor(random(440));
  ey=floor(random(440));
  ex=-60;
  lift=40;
  boo=0;
}
void draw() 
{
    ex%=880;
    g1%=1280;
    g2%=1280;
    g1+=1;
    g2+=1;
    image(img1,-640+g1,0);
    image(img2,-640+g2,0);
    ex+=2;
    int i=0;
    
    switch(boo)
    {
      case 0:
      for(i=0;i<5;i++)
      {
        image(enemy,ex-i*60,ey);      
      }
      if(ex>=640+60*4)
      {
          ey=floor(random(180));
          boo++;
      }

      break;
      case 1:
      for(i=0;i<5;i++)
      {
        image(enemy,ex-i*60,ey+i*60);      
      }
      if(ex>=640+60*4)
      {
        ey=floor(random(180));
        boo++;
      }
      break;      
      case 2:
      image(enemy,ex-120,ey);
      image(enemy,ex-60,ey+60);
      image(enemy,ex,ey+120);
      image(enemy,ex-60,ey+180);
      image(enemy,ex-120,ey+240);
      image(enemy,ex-180,ey+180);
      image(enemy,ex-240,ey+120);
      image(enemy,ex-180,ey+60);
      if(ex>=640+60*4)
      {
        ey=floor(random(440));
        boo=0;
      }
      
      break;      
    }
    image(fighter,fx,fy);
    image(treasure,tx,ty);
    fill(250,0,0);
    rect(5,5,lift+5,20);
    image(hp,2,2);
}
