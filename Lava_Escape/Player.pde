float yvel = 0;
float xvel = 5;//xvel
float termvel = 50;
float px = 484;
float py = 620;
float pheight = 56;
float pwidth = 32;
float distx = 999;
float distyup = 999;
float distydown = 999;
boolean singlejump = false;
boolean doublejump = false;
boolean facingright = true;
boolean movingright = false;
boolean movingleft = false;
boolean isonground = true;
int score = 0;
float maxy = 124;
float globaly = 124;
int state = 1;//1 idle1        2 idle2           3 jumping1           4 jumping2         5 running1        6 running2
void UpdatePlayer(){
  HorizMove();
  VertMove();
  DrawPlayer();
  
}
void VertMove(){
  getDistY();
  if(distydown == 0 && yvel == 0){//if on ground
      isonground = true;
      singlejump = false;
      doublejump = false;
    }else
      isonground = false;
  if(!isonground){
    if(distydown <= yvel + 1){//if would fall into ground
      for(Obstacle o : obstacles){
        o.y -= distydown;
        o.u -= distydown;
        o.d -= distydown;
      }
      for(Enemy e : enemies){
        e.y -= distydown;
        e.u -= distydown;
        e.d -= distydown;
        if(e.type == 1){
          e.origpos -= distydown;
        }
      }
      for(RoomFloors r : roomfloors){
        r.y -= distydown;
      }
      globaly -= distydown;
      lavay -= distydown;
      yvel = 0;
    }else if(distyup <= abs(yvel) && yvel < 0){//if would hit head
      for(Obstacle o : obstacles){
        o.y += distyup;
        o.u += distyup;
        o.d += distyup;
      }
      for(Enemy e : enemies){
        e.y += distyup;
        e.u += distyup;
        e.d += distyup;
        if(e.type == 1){
          e.origpos += distyup;
        }
      }
      for(RoomFloors r : roomfloors){
        r.y += distyup;
      }
      globaly += distyup;
      EnemyCollisions();
      lavay += distyup;
      yvel = 0;
    }else{
      for(Obstacle o : obstacles){
        o.y -= yvel;
        o.u -= yvel;
        o.d -= yvel;
      }
      for(Enemy e : enemies){
        e.y -= yvel;
        e.u -= yvel;
        e.d -= yvel;
        if(e.type == 1){
          e.origpos -= yvel;
        }
      }
      for(RoomFloors r : roomfloors){
        r.y -= yvel;
      }
      globaly -= yvel;
      EnemyCollisions();
      lavay -= yvel;
      if(yvel < termvel){//if not at termvel
        yvel += gravity;
      }
    }
  }
}
void HorizMove(){//true = left false = right
    float dist = xvel;
    for(Obstacle o : obstacles){
      if(py < o.d && py + pheight > o.u){//if obst is on same y
        if(movingleft){
          if(px - xvel < o.r && px - xvel >= o.l)//if inside on left
            dist = px - o.r;
        }else if(movingright){
          if(px + pwidth >= o.l && px + pwidth < o.r)//if inside on right
            dist = o.l - (px + pwidth);
        }
      }
    }
    if(movingleft){
      px -= dist;
    }else if(movingright){
      px += dist;
    }
}
void DrawPlayer(){
  
  float x = px;
  float y = py;
  if(facingright){
    fill(0, 0, 0);rect(x + 28, y + 16, 4, 4);rect(x + 16, y + 16, 4, 4);rect(x + 8, y + 52, 4, 4);rect(x + 8, y + 48, 4, 4);rect(x + 12, y + 48, 4, 4);rect(x + 12, y + 44, 4, 4);rect(x + 8, y + 44, 4, 4);rect(x + 24, y + 52, 4, 4);rect(x + 24, y + 48, 4, 4);rect(x + 28, y + 48, 4, 4);rect(x + 28, y + 44, 4, 4);rect(x + 24, y + 44, 4, 4);rect(x + 4, y + 40, 4, 4);rect(x + 4, y + 36, 4, 4);rect(x + 0, y + 32, 4, 4);fill(63, 131, 69);rect(x + 8, y + 40, 4, 4);rect(x + 12, y + 40, 4, 4);rect(x + 12, y + 36, 4, 4);rect(x + 8, y + 36, 4, 4);rect(x + 8, y + 32, 4, 4);fill(0, 62, 8);rect(x + 16, y + 32, 4, 4);rect(x + 16, y + 36, 4, 4);rect(x + 16, y + 40, 4, 4);rect(x + 28, y + 40, 4, 4);rect(x + 28, y + 36, 4, 4);rect(x + 28, y + 32, 4, 4);fill(8, 84, 19);rect(x + 16, y + 28, 4, 4);rect(x + 28, y + 28, 4, 4);fill(37, 109, 47);rect(x + 8, y + 28, 4, 4);rect(x + 12, y + 28, 4, 4);fill(238, 238, 238);rect(x + 24, y + 40, 4, 4);rect(x + 20, y + 40, 4, 4);rect(x + 20, y + 36, 4, 4);rect(x + 24, y + 36, 4, 4);rect(x + 24, y + 32, 4, 4);rect(x + 20, y + 32, 4, 4);fill(225, 202, 0);rect(x + 12, y + 32, 4, 4);fill(206, 206, 206);rect(x + 24, y + 28, 4, 4);rect(x + 20, y + 28, 4, 4);fill(24, 24, 24);rect(x + 4, y + 32, 4, 4);rect(x + 16, y + 44, 4, 4);fill(36, 36, 36);rect(x + 0, y + 36, 4, 4);rect(x + 0, y + 40, 4, 4);rect(x + 20, y + 44, 4, 4);fill(64, 64, 64);rect(x + 4, y + 28, 4, 4);fill(227, 192, 137);rect(x + 16, y + 24, 4, 4);rect(x + 20, y + 24, 4, 4);rect(x + 24, y + 24, 4, 4);rect(x + 28, y + 24, 4, 4);rect(x + 28, y + 20, 4, 4);rect(x + 16, y + 20, 4, 4);rect(x + 20, y + 16, 4, 4);rect(x + 24, y + 16, 4, 4);rect(x + 28, y + 12, 4, 4);rect(x + 24, y + 12, 4, 4);rect(x + 20, y + 12, 4, 4);rect(x + 16, y + 12, 4, 4);fill(249, 219, 171);rect(x + 8, y + 24, 4, 4);rect(x + 12, y + 24, 4, 4);rect(x + 12, y + 20, 4, 4);rect(x + 12, y + 16, 4, 4);fill(211, 175, 115);rect(x + 16, y + 8, 4, 4);rect(x + 20, y + 8, 4, 4);rect(x + 24, y + 8, 4, 4);fill(66, 45, 7);rect(x + 8, y + 20, 4, 4);rect(x + 8, y + 16, 4, 4);rect(x + 8, y + 12, 4, 4);rect(x + 8, y + 8, 4, 4);rect(x + 12, y + 12, 4, 4);rect(x + 12, y + 8, 4, 4);rect(x + 12, y + 4, 4, 4);rect(x + 8, y + 4, 4, 4);rect(x + 4, y + 8, 4, 4);rect(x + 4, y + 12, 4, 4);rect(x + 4, y + 16, 4, 4);fill(56, 36, 6);rect(x + 20, y + 20, 4, 4);rect(x + 24, y + 20, 4, 4);rect(x + 32, y + 12, 4, 4);rect(x + 32, y + 8, 4, 4);rect(x + 32, y + 4, 4, 4);rect(x + 28, y + 8, 4, 4);rect(x + 28, y + 4, 4, 4);rect(x + 24, y + 4, 4, 4);rect(x + 20, y + 4, 4, 4);rect(x + 16, y + 4, 4, 4);rect(x + 12, y + 0, 4, 4);rect(x + 16, y + 0, 4, 4);rect(x + 20, y + 0, 4, 4);rect(x + 24, y + 0, 4, 4);rect(x + 28, y + 0, 4, 4);
  }else{
    fill(0, 0, 0);rect(x + 4, y + 16, 4, 4);rect(x + 16, y + 16, 4, 4);rect(x + 8, y + 52, 4, 4);rect(x + 4, y + 48, 4, 4);rect(x + 4, y + 44, 4, 4);rect(x + 8, y + 44, 4, 4);rect(x + 8, y + 48, 4, 4);rect(x + 24, y + 52, 4, 4);rect(x + 20, y + 48, 4, 4);rect(x + 24, y + 48, 4, 4);rect(x + 24, y + 44, 4, 4);rect(x + 20, y + 44, 4, 4);rect(x + 28, y + 40, 4, 4);rect(x + 28, y + 36, 4, 4);rect(x + 32, y + 32, 4, 4);fill(63, 131, 69);rect(x + 24, y + 40, 4, 4);rect(x + 24, y + 32, 4, 4);rect(x + 24, y + 36, 4, 4);rect(x + 20, y + 36, 4, 4);rect(x + 20, y + 40, 4, 4);fill(238, 238, 238);rect(x + 12, y + 40, 4, 4);rect(x + 8, y + 40, 4, 4);rect(x + 8, y + 36, 4, 4);rect(x + 12, y + 36, 4, 4);rect(x + 12, y + 32, 4, 4);rect(x + 8, y + 32, 4, 4);fill(0, 62, 8);rect(x + 16, y + 40, 4, 4);rect(x + 16, y + 36, 4, 4);rect(x + 16, y + 32, 4, 4);rect(x + 4, y + 32, 4, 4);rect(x + 4, y + 36, 4, 4);rect(x + 4, y + 40, 4, 4);fill(24, 24, 24);rect(x + 16, y + 44, 4, 4);rect(x + 28, y + 32, 4, 4);fill(32, 32, 32);rect(x + 12, y + 44, 4, 4);rect(x + 32, y + 40, 4, 4);rect(x + 32, y + 36, 4, 4);fill(64, 64, 64);rect(x + 28, y + 28, 4, 4);fill(225, 202, 0);rect(x + 20, y + 32, 4, 4);fill(37, 109, 47);rect(x + 24, y + 28, 4, 4);rect(x + 20, y + 28, 4, 4);fill(8, 84, 19);rect(x + 16, y + 28, 4, 4);rect(x + 4, y + 28, 4, 4);fill(206, 206, 206);rect(x + 12, y + 28, 4, 4);rect(x + 8, y + 28, 4, 4);fill(227, 192, 137);rect(x + 4, y + 20, 4, 4);rect(x + 4, y + 24, 4, 4);rect(x + 8, y + 24, 4, 4);rect(x + 12, y + 24, 4, 4);rect(x + 16, y + 24, 4, 4);rect(x + 16, y + 20, 4, 4);rect(x + 12, y + 16, 4, 4);rect(x + 8, y + 16, 4, 4);rect(x + 4, y + 12, 4, 4);rect(x + 8, y + 12, 4, 4);rect(x + 12, y + 12, 4, 4);rect(x + 16, y + 12, 4, 4);fill(249, 219, 171);rect(x + 24, y + 24, 4, 4);rect(x + 20, y + 24, 4, 4);rect(x + 20, y + 20, 4, 4);rect(x + 20, y + 16, 4, 4);fill(211, 175, 115);rect(x + 8, y + 8, 4, 4);rect(x + 12, y + 8, 4, 4);rect(x + 16, y + 8, 4, 4);fill(66, 45, 7);rect(x + 24, y + 20, 4, 4);rect(x + 24, y + 16, 4, 4);rect(x + 24, y + 12, 4, 4);rect(x + 20, y + 4, 4, 4);rect(x + 20, y + 12, 4, 4);rect(x + 20, y + 8, 4, 4);rect(x + 24, y + 4, 4, 4);rect(x + 24, y + 8, 4, 4);rect(x + 28, y + 8, 4, 4);rect(x + 28, y + 12, 4, 4);rect(x + 28, y + 16, 4, 4);fill(54, 36, 6);rect(x + 12, y + 20, 4, 4);rect(x + 8, y + 20, 4, 4);rect(x + 0, y + 12, 4, 4);rect(x + 0, y + 8, 4, 4);rect(x + 0, y + 4, 4, 4);rect(x + 4, y + 8, 4, 4);rect(x + 4, y + 4, 4, 4);rect(x + 8, y + 4, 4, 4);rect(x + 4, y + 0, 4, 4);rect(x + 8, y + 0, 4, 4);rect(x + 12, y + 0, 4, 4);rect(x + 12, y + 4, 4, 4);rect(x + 16, y + 4, 4, 4);rect(x + 16, y + 0, 4, 4);rect(x + 20, y + 0, 4, 4);
  }
}
void getDistY(){//finds nearest obstacle in Y dir based on yvel above and below
  float belowmin = 999;
  float abovemin = 999;
  for(Obstacle o : obstacles){
    if(px + pwidth > o.l && px < o.r){//if obst is on same x as player
      if(py - o.d >= 0){//if obstacle is the closest upward obstacle
        if(py - o.d < abovemin)
          abovemin = py - o.d;
      }
      if(o.u - py - pheight >= 0){
        if(o.u - py - pheight < belowmin)
          belowmin = o.u - py - pheight;
      }
    }
  }
  for(RoomFloors r : roomfloors){
    if(r.y - py - pheight >= 0){
      if(r.y - py - pheight < belowmin)
        belowmin = r.y - py - pheight;
    }
  }
  distydown = belowmin;
  distyup = abovemin;
}
void checkForKill(){
  if(py + pheight >= lavay){
      paused = true;
      Pause(true, false);
      gameStarted = false;
      DrawPlayer();
  }
}
