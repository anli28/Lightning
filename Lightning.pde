Flash[] flashes = new Flash[1000];
int startX = 300;
int startY = 0;
int endX = (int)(Math.random() * 600);
int endY = 0;


void setup() {
	size(600,600);
	background(0);
	strokeWeight(0.1);
	for (int i = 0; i < flashes.length; i++) {
		flashes[i] = new Flash();
	}
}

void mousePressed() {
	startX = 300;
	startY = 0;
 	endX = (int)(Math.random() * 600);
 	endY = 0;
}


void draw() {
	stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		for ( int i = 0; i < flashes.length; i++) {
				flashes[i].up();
		
	}

}


class Flash{
	int startY;
	int startX;
	int endY;
	int endX;

	Flash() {
	 startY = 0;
	 startX = 300;
	 endY = 0;
	 endX = (int)(Math.random() * 600);
	}

	void up() {
	endX = startX + (int)(Math.random()*20)-10;
	endY = startY + (int)(Math.random()*10);
    line( startX,startY, endX, endY);
    startX = endX;
    startY = endY;
	
	}

}