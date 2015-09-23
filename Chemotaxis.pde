double ranNum;

Bacteria bob;
Bacteria [] colony;

//declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here
 	background(250);
 	size(500,500);
 	bob = new Bacteria(); 
 	colony = new Bacteria[50];
  for(int i=0; i<colony.length; i++)
  {
    colony[i] = new Bacteria();
  
  } 	
 	





 }   
 void draw()   
 {    
 	//move and show the bacteria
 	background(250);
 	stroke(0);
 	line(250,0,250,500);
 	bob.show();
 	bob.walk();
 	for(int i=0; i<colony.length; i++)
  {
    colony[i].walk();
    colony[i].show();
  }
	
 	
 }  
 
class Bacteria    
 {     
 	//lots of java!
	int myX,myY,myColor;
	Bacteria()
	{
		myX=250;
		myY=250;
		myColor=color(0,0,0);
		ranNum=0;
	}   
	void walk()
	{
	//	myX= myX+ (int)(Math.random()*3)-1;
	//	myY= myY+ (int)(Math.random()*3)-1;
	if (myX < mouseX)
    {
   		myX = myX + (int)(Math.random()*7)-1;
    }
   	else 
   	{
   		myX = myX + (int)(Math.random()*7)-8;
   	}

   	if (myY < mouseY)
   	{
		myY = myY + (int)(Math.random()*7)-1;
	}
   	else 
   	{
   		myY = myY + (int)(Math.random()*7)-8;
   	}
  }
	
	void show()
	{
		strokeWeight(10);
		if(myX<250){
		ranNum=Math.random();
		if(ranNum<=.35){
			myColor=color(255,0,0);

		}
		else if(ranNum<=.65){
			myColor=color(0,255,0);
		}
		else
			myColor=color(0,0,255);
		}
		else 
			myColor=color(0,0,0);


		stroke(myColor);
 		point(myX,myY);
	}
  }
