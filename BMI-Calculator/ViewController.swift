
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBOutlet weak var weightSlder: UISlider!
    @IBOutlet weak var heightSlder: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = Double(heightSlder.value)
        let weight = Double(weightSlder.value)
        
        let bmi = weight / (pow(height, 2))
        print(bmi)
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let rounded = String(format: "%.2f", sender.value)
        heightLabel.text = "\(rounded)m"

    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let wholeNum = Int(ceil(sender.value))
        weightLabel.text = "\(wholeNum)Kg"
    }
    
    func updateUI() {
        label.text = "Calculate Your BMI"
        
    }
}

