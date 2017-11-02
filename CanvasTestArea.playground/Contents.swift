//: [Previous](@previous) / [Next](@next)
//: # Test Area
//:
//: Use this page to experiment with a static image.
//:
//: When you perfect a technique, you can move it into the animated sketch.
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport



/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Create canvas
let canvas = Canvas(width: 800, height: 600)

// No borders
canvas.drawShapesWithBorders = false

// Draw the axes so we can see where we are
canvas.drawAxes()

// Move the origin to the middle of the canvasand
canvas.translate(byX: 400, byY: 300)



// Draw a bat relative to the origin
canvas.fillColor = Color.orange


// First make an ellipse to form the body
canvas.drawEllipse(centreX: 0, centreY: 0, width: 300, height: 200)


// Underside of the botom part
canvas.fillColor = Color.orange
canvas.drawEllipse(centreX: -60, centreY: -70, width: 80, height: 80) // left
canvas.drawEllipse(centreX: 0, centreY: -70, width: 80, height: 80) // left middle
canvas.drawEllipse(centreX: 70, centreY: -70, width: 80, height: 80) // right middle
 // eyes



/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Replace this comment with your first comment – what is the goal of the code you're about to write?



/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView


