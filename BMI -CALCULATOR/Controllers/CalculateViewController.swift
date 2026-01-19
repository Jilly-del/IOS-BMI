

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    var bmiValue = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func weightSliderChange(_ sender: UISlider) {
              weightLabel.text = String(format:"%.2f",sender.value ) + "kg"
    }
    
    @IBAction func heightsliderChange(_ sender: UISlider) {
        heightLabel.text = String(Int(sender.value)) + "m"
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculatePressed(weight: weight, height: height)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinstionVC = segue.destination as! ResultViewController
            destinstionVC.bmiValue = calculatorBrain.getBMIValue()
            destinstionVC.advice = calculatorBrain.getAdvice()
            destinstionVC.color = calculatorBrain.getColor()
          
            
        }
    }
   
    


    

    
}

