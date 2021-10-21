void game(){
  ourGIF.show();
  myGIF.show();
  yourGIF.show();
}


void gameClicks() {
  if (mouseX > 10 && mouseX< 60  && mouseY> 10 && mouseY< 50)

    mode = PAUSE;
}
