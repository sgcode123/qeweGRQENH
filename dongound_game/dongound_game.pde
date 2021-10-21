int mode;
int i;

boolean mouseReleased;
boolean hadPressed;

final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;

AnimatedGIF myGIF;
AnimatedGIF yourGIF;
AnimatedGIF ourGIF;

Button blueButton, greenButton, pinkButton, blackButton;
color bkg;

boolean upkey,downkey,leftkey,rightkey,spacekey;
boolean win, lose;

ArrayList<GameObject> myObject;




//color pallet
color blue   = #0E91AA;
color green  = #04900F;
color pink   = #F7AADE;
color yellow = #FFFF98;
color black  = #000000;
color white  = #FFFFFF;


void setup()  {
  size(800,600);
 bkg = white;
   mode = INTRO;
  imageMode(CENTER);

  myObject = new ArrayList<GameObject>();

 blueButton  = new Button("BLUE",  200, 200, 200, 150, blue,  pink);
  greenButton = new Button("GREEN", 200, 400, 200, 150, green, yellow);
  pinkButton  = new Button("PINK",  400, 650, 600, 200, pink,  blue);
  blackButton = new Button("BLACK", 290, 380, 270, 100, black, white);
    
  
  myGIF = new AnimatedGIF(38, "frame_", "_delay-0.03s.png", 100, 100, 200, 200);
  yourGIF = new AnimatedGIF(38, "frame_", "_delay-0.03s.png", 500, 500, 300, 300);
  ourGIF = new AnimatedGIF(3, "gameGif/frame_", "_delay-0.2s.png");
  

}





void draw(){
     if (mousePressed) hadPressed = true;
  if (hadPressed && !mousePressed) {
     mouseReleased = true;
     hadPressed = false;
  }
  else if (  mouseReleased )  mouseReleased  = false;
  
  

 
     if(mode == INTRO){
    intro();
  }else if (mode == GAME){
    game();
  }else if(mode == PAUSE){
    pause();
  }else if(mode == GAMEOVER){
    gameover();
  }else {
    println("Error: Mode = " + mode);
   
}
}
