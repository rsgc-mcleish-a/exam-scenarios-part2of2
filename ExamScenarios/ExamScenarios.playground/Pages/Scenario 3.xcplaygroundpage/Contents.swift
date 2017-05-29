//: [Next](@next)
//: # Scenario 3
//: ## Your goal
//: Reproduce this image:
//:
//: ![Talking Heads](TalkingHeads.png "Talking Heads")
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

let canvas = Canvas(width: 400, height: 600)

//Background
canvas.fillColor = Color.init(hue: 17, saturation: 100, brightness: 100, alpha: 100)
canvas.drawRectangle(centreX: 200, centreY: 300, width: 1000, height: 1000)

canvas.drawShapesWithBorders = false

func drawTriangle (centreX: Int, centreY: Int) {
    
    var points : [NSPoint] = []
    
    
    let A = NSPoint(x: centreX, y: centreY)
    let B = NSPoint(x: centreX - 45, y: centreY)
    let C = NSPoint(x: centreX, y: centreY + 45)
    
    points.append(contentsOf: [A, B, C])
    
    canvas.drawCustomShape(with: points)
}



for x in stride(from: 24, to: 400, by: 44) {
    for y in stride(from: 224, to: 600, by: 44) {
        
        if x + 200 == y || x + 156 == y || x + 112 == y || x + 68 == y || x + 24 == y || x == y + 20 || x == y + 64 || x == y + 108 || x == y + 152 {
            
            canvas.fillColor = Color.yellow
        
        } else {
            canvas.fillColor = Color.white
        }
        
        
        drawTriangle(centreX: x + 24, centreY: y - 20)
        
    }
}


//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
