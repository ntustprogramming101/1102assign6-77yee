class Dinosaur extends Enemy{
	// Requirement #4: Complete Dinosaur Class
	final float TRIGGERED_SPEED_MULTIPLIER = 5;
  float speed = 1f;
  
  Dinosaur(float x, float y){
    super(x, y);
    
  }
  
  void display(){
    pushMatrix();
    translate(x,y);
    if(speed > 0){
      scale(1,1);
      image(dinosaur, 0, 0, w, h);
    } else{
      scale(-1,1);
      image(dinosaur, -w, 0, w, h);
    }
    popMatrix();
  }
  
  void update(){
    float currentSpeed = speed;
    
    if(player.y == y && ((speed > 0 && player.x > x) || (speed < 0 && player.x < x))){
        currentSpeed = speed * TRIGGERED_SPEED_MULTIPLIER;
    }
    
    x += currentSpeed;
    
    if(x > width-w ||x < 0){
      speed *= -1;
    }
  }
