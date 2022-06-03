class Dinosaur extends Enemy{
	// Requirement #4: Complete Dinosaur Class
	final float TRIGGERED_SPEED_MULTIPLIER = 5;

	// HINT: Player Detection in update()
 float speed = 1f;
 float w = SOIL_SIZE;
 float h = SOIL_SIZE;
 int direction;
 Dinosaur(float x, float y){
      super(x, y);
    }
	/*
	If player is on the same row with me AND (it's on my right side when I'm going right OR on my left side when I'm going left){
		currentSpeed *= TRIGGERED_SPEED_MULTIPLIER(?)
	}*/
void display() {
  image(dinosaur, x, y);
  }

void update() {
    x += speed;
    if (x+w>= width) {
      speed=-1f;
      pushMatrix();
      translate(x+w, y);
      scale(-1, 1);
      popMatrix();
    }
    if (x<=0) {
      speed=1f;
    }
    if (speed==1f) {
      if (player.y+player.h>y&&player.y<y+h&&player.x> x+w) {
        speed=5;
      }
      }else  if (speed==-1f) {
        if (player.y+player.h>y&&player.y<y+h&&player.x+player.w< x) {
          speed=-5;
        }
      }
    }
}
