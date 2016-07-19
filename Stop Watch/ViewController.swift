import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var counter = 0
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func start(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTime"), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    
    @IBAction func reset(sender: AnyObject) {
        timer.invalidate()
        counter = 0
        timerLabel.text = "\(counter)"
    }
    
    func increaseTime(){
        counter+=1
        timerLabel.text = "\(counter)"
    }
    
}

