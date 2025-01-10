function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean
{
  var collision:Boolean = obj1.hitTestObject(obj2);
  if (collision)
  {
    trace("Collision detected!");
  }
  return collision;
}

// Example usage:
var ball:Ball = new Ball();
var wall:Wall = new Wall();

addChild(ball);
addChild(wall);

//Check collision every frame, in ENTER_FRAME event
addEventListener(Event.ENTER_FRAME, checkCollisionFrame);

function checkCollisionFrame(e:Event):void {
  checkCollision(ball, wall);
}

//Ball and Wall are DisplayObject classes.