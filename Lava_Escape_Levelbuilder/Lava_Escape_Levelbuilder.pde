ArrayList<Integer> pieces = new ArrayList<Integer>();//grouped by 2
ArrayList<Integer> colors = new ArrayList<Integer>();//grouped by 3
int xdimension = 32;
int ydimension = 32;
int size = 3;//size per pixel
int r = 0;
int g = 0;
int b = 0;
String colostring = "";
boolean settingcolor = false;
int colindex = 0;
boolean erasing = false;
void setup(){
  size(1920,1080);
  background(100);
}
void mouseDragged() {
  for(int x = 25; x <= xdimension * 30; x+=30){
    for(int y = 25; y <= ydimension * 30; y+=30){
      if(mouseX >= x && mouseX <= x + 30 && mouseY >= y && mouseY <= y + 30){
        int colorindex = 0;
        for(int i = 0; i < pieces.size() - 1; i+=2){
          if(x == pieces.get(i) && y == pieces.get(i + 1)){
            pieces.remove(i);
            pieces.remove(i);
            colors.remove(colorindex);
            colors.remove(colorindex);
            colors.remove(colorindex); 
          }
          colorindex += 3;
        }
        if(!erasing){
          pieces.add(x);
          pieces.add(y);
          colors.add(r);
          colors.add(g);
          colors.add(b);
        }
      }
    }
  }
}
void draw(){
  stroke(0);
  fill(100);
  rect(0,0,1920,1080);
  fill(r, g, b);
  rect(1425,800,100,100);
  textSize(18);
  fill(0);
  text("Click to draw\nPress C to change color: after pressing, enter the 3 rgb \nvalues separated by a space\nPress D to clear\nPress P to print code to console",1425,935);
  text(xdimension + " x " + ydimension, 1530, 830);
  if(!settingcolor)
    fill(0);
  else
    fill(0,255,0);
  text("Color: " + r + ", " + g + ", " + b,1530,900);
  if(erasing)
    text("Erasing",1530,850);
  fill(150);
  strokeWeight(1);
  stroke(0);
  for(int x = 25; x <= xdimension * 30; x+=30){
    for(int y = 25; y <= ydimension * 30; y+=30){
      rect(x,y,30,30);
    }
  }
  int colorindex = 0;
  for(int i = 0; i + 1 < pieces.size(); i+=2){
    fill(colors.get(colorindex), colors.get(colorindex + 1), colors.get(colorindex + 2));
    colorindex += 3;
    rect(pieces.get(i), pieces.get(i + 1), 30, 30);
  }
}
void keyPressed() {
  if (keyPressed) {//other keys
    if (key == 'c' || key == 'C') {
      if(settingcolor){
        settingcolor = false;
        colindex = 0;
      }else
        settingcolor = true;
    }
    if (key == 'd' || key == 'D') {
      pieces.clear();
      colors.clear();
    }
    if (key == 'p' || key == 'P') {
      println("\n-------------------------------------- Size " + size + " --------------------------------------");
      int colorindex = 0;
      int r = 256;
      int g = 256;
      int b = 256;
      for(int i = 0; i < pieces.size(); i+=2){
        if(colors.get(colorindex) != r || colors.get(colorindex + 1) != g || colors.get(colorindex + 2) != b){
          print("fill(" + colors.get(colorindex) + ", " + colors.get(colorindex + 1) + ", " + colors.get(colorindex + 2) + ");");
          r = colors.get(colorindex);
          g = colors.get(colorindex + 1);
          b = colors.get(colorindex + 2);
        }
          print("rect(x + " + ((pieces.get(i) - 25) / 30 * size) + ", y + " + ((pieces.get(i + 1) - 25) / 30 * size) + ", " + size + ", " + size + ");");
        colorindex+=3;
      }
      println("\n------------------------------------------------------------------------------------");
    }
    if (key == 'e' || key == 'E') {
      if(erasing)
        erasing = false;
      else
        erasing = true;
    }
    if(settingcolor){
      if(key == ' '){
        int c = int(colostring);
        if(c > 255)
          c = 255;
        if(colindex == 0){//r
          r = c;
        }else if(colindex == 1){//g
          g = c;
        }else if(colindex == 2){//b
          b = c;
        }else{
          settingcolor = false;
          colindex = -1;
        }
        colindex++;
        colostring = "";
      }else{
        if(key == '1' || key == '2' || key == '3' || key == '4' || key == '5' || key == '6' || key == '7' || key == '8' || key == '9' || key == '0' && colostring.length() < 3)
          colostring += str(key);
      }
    }
  }
}//s to save
