
import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBOutlet weak var weightSlder: UISlider!
    @IBOutlet weak var heightSlder: UISlider!
    
    var bmiValue: Double?
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let rounded = String(format: "%.2f", sender.value)
        heightLabel.text = "\(rounded)m"

    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let wholeNum = Int(ceil(sender.value))
        weightLabel.text = "\(wholeNum)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = Double(heightSlder.value)
        let weight = Double(weightSlder.value)
        
        self.bmiValue = calculatorBrain.calculateBMIValue(weight: weight, height: height)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destination = segue.destination as! ResultsViewController
            destination.bmiValue = calculatorBrain.getBMIValue(bmiValue: self.bmiValue!)
        }
    }
    
    func updateUI() {
        label.text = "Calculate Your BMI"
    }
}

