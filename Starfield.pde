Particle[] star = new Particle[500];
void setup()
{
	//your code here
	size(800, 800);
	for (int i = 0; i < star.length ; i++)
	{
		star[i] = new NormalParticle();
	}
	star[0] = new OddballParticle();
	star[1] = new JumboParticle();
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
	int r,g,b, size; 
	NormalParticle(){
		myX = 400;
		myY = 400;
		size =5;
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
		if (speed < 20){
		speed += 0.01;
	}
	else {
		speed -= 5;
	}

}
	public void show()
	{
		noStroke();
		fill(r,g,b);
		ellipse((float)myX,(float)myY,size,size);

	}	
}

interface Particle
{
	//your code here
  public void show();
  public void move();
 
	
}
class OddballParticle implements Particle //uses an interface
{
	//your code here
	double omyX, omyY;
	int a,b,c, osize, ospeed, oangle;
	OddballParticle()
	{
		omyX = 400;
		omyY = 400;
		a=(int)(Math.random()*256);
		b=(int)(Math.random()*256);
		c=(int)(Math.random()*256);
		oangle=(int)(Math.random()*(Math.PI*2));
		osize = 25;
		ospeed = 1;
	}
	public void move()
	{
		omyX += Math.tan(oangle)*ospeed;
		omyY += Math.cos(oangle)*ospeed;
	}
	public void show()
	{
		fill(a,b,c);
		ellipse((float)omyY, (float)omyY, osize, osize);
	}


}
class JumboParticle extends NormalParticle //uses inheritance
{
	//your code here
	JumboParticle()
	{
		size = 75;
	}
}

