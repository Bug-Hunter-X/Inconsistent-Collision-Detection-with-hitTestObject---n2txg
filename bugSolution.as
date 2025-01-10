//Improved Collision Detection

function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean
{
  // Convert coordinates to a common reference point
  var obj1Bounds:Rectangle = obj1.getBounds(obj1.parent);
  var obj2Bounds:Rectangle = obj2.getBounds(obj2.parent);
  
  //Simple bounding box collision check
  var collision:Boolean = obj1Bounds.intersects(obj2Bounds);
  
  //More Accurate Pixel Perfect Collision Check (Optional):
  //If bounding box passes, use pixel-perfect collision detection here for greater accuracy

  if (collision)
  {
    trace("Collision detected!");
  }
  return collision;
}

// Example usage (same as bug.as, but with improved collision function)
var ball:Ball = new Ball();
var wall:Wall = new Wall();

addChild(ball);
addChild(wall);

//Check collision every frame, in ENTER_FRAME event
addEventListener(Event.ENTER_FRAME, checkCollisionFrame);

function checkCollisionFrame(e:Event):void {
  checkCollision(ball, wall);
}