Particle[] star = new Particle[500];
void setup()
{
	//your code here
	size(800, 800);
	for (int i = 0; i < star.length - 2; i++){
		star[i] = new NormalParticle();
	}
	//star[498] = new OddballParticle();
	//star[499] = new JumboParticle();
}
void draw()
{
	//your code here
	background(0);
	for (int i=0; i<star.length-2; i++)
	{
		star[i].show();
		star[i].move();
		
	}
}
class NormalParticle implements Particle
{
	double myX, myY, angle, speed;
	int r,g,b; 
	NormalParticle(){
		myX = 400;
		myY = 400;
		angle=(Math.random()*(Math.PI*2));
		speed=(Math.random()*10);
		r=(int)(Math.random()*256);
		g=(int)(Math.random()*256);
		b=(int)(Math.random()*256);


	}
	//your code here
	public void move()
	{
	myX+=Math.cos(angle)*speed;
	myY+=Math.sin(angle)*speed;
	angle += 0.05;
	}
	public void show()
	{
		noStroke();
		fill(r,g,b);
		ellipse((float)myX,(float)myY,5,5);

	}	
}

interface Particle
{
	//your code here
  public void show();
  public void move();
 
	
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

