
import UIKit

struct CalculatorBrain {
    var bmi : BMI?
     
    
    mutating func calculatePressed(weight: Float, height:Float) {
        let value = weight / (height * height)
        if(value < 18.5 ){
            bmi = BMI(value: value, advice: "Eat More Rice", color: UIColor.blue)
        } else if (value >= 18.5 && value <= 24.9  ) {
            bmi = BMI(value: value, advice: "FIt as a fiddle", color: UIColor.green)
        } else {
            bmi = BMI(value: value, advice: "Eat more Fruit or Salad", color: UIColor.red)
        }
        
    }
    
    mutating func getBMIValue() -> String {
        let bmito1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmito1Decimal
        
    }
    
    func getAdvice() -> String  {
      return bmi?.advice ?? "Na you sabi"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.black
    }
}
