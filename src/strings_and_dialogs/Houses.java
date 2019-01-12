package strings_and_dialogs;
import java.awt.Color;
import org.jointheleague.graphical.robot.Robot;

public class Houses{	

public static void main(String[] args) 
{
	
houses();

}

static int houses()
{
	/*Robot Koa = new Robot();	
	Koa.setSpeed(30);
	Koa.moveTo(40,500);
	
	for(int x = 0; x<11; x++)
	{
		Koa.setRandomPenColor();
		Koa.penDown();
		Koa.move(100);
		Koa.turn(90);*/
		// add in pointy or flat roofs
		drawpointyroof();
		drawflatroof();
		/*Koa.move(50);
		Koa.turn(90);
		Koa.move(100);
		Koa.turn(270);
		Koa.setPenColor(50, 100, 100);
		Koa.move(30);
		Koa.turn(270);*/
		
	//}
	
	return 0;
}

static int drawpointyroof()
{
	Robot Koa = new Robot();	
	Koa.setSpeed(30);
	Koa.moveTo(40,500);
	
		Koa.setPenWidth(5);
		Koa.setRandomPenColor();
		Koa.penDown();
		Koa.move(100);
		Koa.turn(45);
		Koa.penDown();
		Koa.move(50);
		Koa.turn(90);
		Koa.move(50);
		Koa.turn(45);
		Koa.move(100);
		Koa.turn(270);
		Koa.setPenColor(50, 100, 100);
		Koa.move(30);
		Koa.turn(270);
	
	
	return 0;
	
}
static int drawflatroof()
{
	
	Robot Koa = new Robot();	
	Koa.setSpeed(30);
	Koa.moveTo(150,500);
Koa.setRandomPenColor();
Koa.penDown();
Koa.move(100);
Koa.turn(90);
Koa.move(50);
Koa.turn(90);
Koa.move(100);
Koa.turn(270);
Koa.setPenColor(50, 100, 100);
Koa.move(30);
Koa.turn(270);
return 0;
}
}
