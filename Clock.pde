class Clock extends Item{
	// Requirement #2: Complete Clock Class
Clock(float x, float y){
      super(x, y);
    }
			// Display Clock
void display(){
    if(isAlive) {image(clock, x, y);  
  }
}

			// Check collision with player
  void checkCollision(Player player){
      if(player.health < player.PLAYER_MAX_HEALTH && isHit(x, y, w, h, player.x, player.y, player.w, player.h) && isAlive){
      isAlive=false;
      addTime(15);
    }
  }
}  
