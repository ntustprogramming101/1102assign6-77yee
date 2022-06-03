class Soldier extends Enemy{
	float speed = 2f;

	void display(){
		image(soldier, x, y);
	}

	void update(){
		x += speed;
		if(x >= width) x = -w;
	}

	Soldier(float x, float y){
		super(x, y);
<<<<<<< HEAD
	}
}
=======
	}}
>>>>>>> 47dfe7ba5fff7145bb70632ee10882037e79b2dc
