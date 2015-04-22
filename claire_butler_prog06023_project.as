import flash.events.Event;

//to stop my character going from f1 to f2 continuously//
myCharacter.stop();

stage.addEventListener (KeyboardEvent.KEY_DOWN, keyDownHandler)
function keyDownHandler (Event:KeyboardEvent): void
{
	if (myCharacter.x >= 256 && Event.keyCode == Keyboard.LEFT)
	{
		myCharacter.x -= 10;
		myCharacter.gotoAndStop(2);
		myCharacter.scaleX = 1;
	}
	
	if (myCharacter.x <= 768 && Event.keyCode == Keyboard.RIGHT)
	{
		myCharacter.x += 10;
		myCharacter.gotoAndStop(2);
		myCharacter.scaleX = -1;
	}
	
	if (myCharacter.x <= 256 && Event.keyCode == Keyboard.LEFT)
	{
		myForeground.x += 12;
		myMidground.x += 10;
		myNearbackground.x +=3;
		mySky.x += 1;
	}
	
	if (myCharacter.x >= 768 && Event.keyCode == Keyboard.RIGHT)
	{
		myForeground.x -= 12;
		myMidground.x -= 10;
		myNearbackground.x -=3;
		mySky.x -= 1;
	}
}

stage.addEventListener (KeyboardEvent.KEY_UP, keyUpHandler)
function keyUpHandler (Event:KeyboardEvent): void
{
	myCharacter.gotoAndStop(1);
}















