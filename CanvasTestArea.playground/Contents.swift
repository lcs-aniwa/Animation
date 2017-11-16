
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 800, height: 600)

canvas.drawShapesWithBorders = false

// Move the prigin to the middle of the canvasand
canvas.translate(byX: 400, byY: 300)

// Draw the axes so we can see where we are
canvas.drawAxes()

// Draw a bat relative to the origin
canvas.fillColor = Color.black

// FIrst make an ellipse to form the body
canvas.drawEllipse(centreX: 0, centreY: 0, width: 200, height: 100)

// Now "cut out" the wings and head by overlapping circles
canvas.fillColor = Color.white

// Underside of wings
canvas.drawEllipse(centreX: -70, centreY: -10, width: 50, height: 50)
canvas.drawEllipse(centreX: -35, centreY: -10, width: 50, height: 50)
canvas.drawEllipse(centreX: 35, centreY: -10, width: 50, height: 50)
canvas.drawEllipse(centreX: 70, centreY: -10, width: 50, height: 50)
canvas.drawEllipse(centreX: 0, centreY: -25, width: 50, height: 50)
canvas.drawEllipse(centreX: 0, centreY: -40, width: 150, height: 50)
// Now add the head
canvas.fillColor = Color.black
var headVertices : [NSPoint] = []
headVertices.append(NSPoint(x: -40, y: 40))
headVertices.append(NSPoint(x: 40, y: 40))
headVertices.append(NSPoint(x: 30, y: 80))
headVertices.append(NSPoint(x: 20, y: 60))
headVertices.append(NSPoint(x: -20, y: 60))
headVertices.append(NSPoint(x: -30, y: 80))
headVertices.append(NSPoint(x: -40, y: 40))







// End where we started
canvas.drawCustomShape(with: headVertices)





// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView


