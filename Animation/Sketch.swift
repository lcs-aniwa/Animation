import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    var dx : Int
    var dy : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 250
        dx = 3//set the difference for x
        dy = 3 //set the difference for y
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
    // Clear the background
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        // Change position
        x += dx
        y += dy
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        //if we go off the right edge of the screem
        if x > 500{
            dx = -2
        }
        //if we go off the top of the screem
        if y > 500 {
            dy = -2
        }
        //if we go off the left edge of the screem
        if x < 0 {
            dx = 2
        }
        //if we go off the bottom edge of the screem
        if y < 0{
            dy = 2
        }
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
    }
    
}
