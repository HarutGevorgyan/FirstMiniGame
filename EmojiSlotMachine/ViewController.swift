import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emojiFirst: UILabel!
    @IBOutlet weak var emojiSecond: UILabel!
    @IBOutlet weak var emojiThird: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var mainButton: UIButton!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func buttonPressed() {
        infoLabel.text = ""
        emojiFirst.text = randomEmoji()
        emojiSecond.text = randomEmoji()
        emojiThird.text = randomEmoji()
        counter += 1
        counterLabel.text = "Tries: \(counter)"
        counterLabel.textColor = UIColor.white
        
        if emojiFirst.text == emojiSecond.text && emojiSecond.text == emojiThird.text {
            resultLabel.text = "JACKPOT !!!"
            counterLabel.text = "You Did it after \(counter) tries"
            counterLabel.textColor = UIColor.yellow
            resultLabel.textColor = UIColor.yellow
            counter = 0
            mainButton.setTitle("Start new game", for: .normal)
            
        } else if emojiFirst.text == emojiSecond.text || emojiSecond.text == emojiThird.text {
            resultLabel.text = "Keep on"
            resultLabel.textColor = UIColor.orange
            mainButton.setTitle("Try", for: .normal)
            
        } else {
            if counter % 10 == 0 {
                resultLabel.text = "Don't give up!"
                resultLabel.textColor = UIColor.white
            } else {
                resultLabel.text = ""
            }
            mainButton.setTitle("Try", for: .normal)
        }
        
    }
}

