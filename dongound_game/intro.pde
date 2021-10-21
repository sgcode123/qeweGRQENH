void intro(){
  background(pink);
  blackButton.show();
}

void introClicks() {
  if (mouseX > 290 && mouseX< 560  && mouseY> 380 && mouseY< 480)
mode = GAME;

}
