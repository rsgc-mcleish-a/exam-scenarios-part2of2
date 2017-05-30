//: [Previous](@previous)
//: # Scenario 5
//: ## Your goal
//: Reproduce this image:
//:
//: ![Velvet Underground](VelvetUnderground.png "Velvet Underground")
/*:
 ## Notes:
 * you will work on a canvas that is 400 pixels wide by 600 pixels high
 * strongly recommend that you make a plan [using this storyboard template](http://russellgordon.ca/rsgc/2016-17/ics2o/Storyboard%20Planning%20Template.pdf) (I have hard copies available if you are in class)
 * you can use the Digital Color Meter program to obtain an RGB color value (Command-Shift-C), then [go to this site](http://rgb.to/), paste the result, and use the HSB values provided.
 * efficiency counts: employ loops and/or function(s) and/or conditional statements to write compact code
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport


//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![timeline](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)


//Make Background
canvas.fillColor = Color.black
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)


canvas.drawShapesWithBorders = false
canvas.defaultLineWidth = 15


for x in stride(from: 10, to: 396, by: 66) {
    for y in stride(from: 10, to: 396, by: 66) {
        
        if x == y {
            
            canvas.fillColor = Color.white
            canvas.lineColor = Color.white
        
        } else {
            
            canvas.fillColor = Color.init(hue: 313, saturation: 77, brightness: 65, alpha: 100)
            canvas.lineColor = Color.init(hue: 313, saturation: 77, brightness: 65, alpha: 100)
        
        }
        
        canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 45, height: 15)
        canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 15, height: 45)
        canvas.drawLine(fromX: x + 15, fromY: y + 15, toX: x + 45, toY: y + 45)

        
    }
}

//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
