# Inconsistent Collision Detection in ActionScript 3

This repository demonstrates a common issue encountered when using the `hitTestObject()` method in ActionScript 3 for collision detection.  The `hitTestObject()` function sometimes fails to accurately detect collisions, especially under certain conditions involving object transformations (scaling and rotation) and potentially inaccurate coordinate system usage.

## The Problem
The provided `bug.as` file contains code that attempts to detect collisions between two `DisplayObject` instances (a ball and a wall). Despite seemingly correct implementation, `hitTestObject()` may not always return the expected results.

## Solution
The `bugSolution.as` file presents several strategies for improved collision detection: 
* **Using localToGlobal() and globalToLocal():**  Ensure coordinate systems are consistent across objects.
* **Checking Bounding Boxes:** As a simpler method, compare the bounding boxes of both objects.
* **Pixel-Perfect Collision Detection:** (if accuracy is critical) Implement a more sophisticated collision detection algorithm that checks pixel-by-pixel overlap, though this is computationally more expensive.

## How to Use
1.  Compile and run the `bug.as` file to observe the inconsistent collision detection.
2.  Compare the results with the improved collision detection presented in `bugSolution.as`.

This example highlights the importance of careful consideration when using `hitTestObject()` and the benefits of alternative approaches for robust collision handling in ActionScript 3 applications.