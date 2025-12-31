import Foundation

struct CalculatorBrain {
    var bmiValue: Double?
    
    mutating func calculateBMIValue(weight: Double, height: Double) -> Double {
        bmiValue = weight / (pow(height, 2))
        return bmiValue
    }
    
    mutating func getBMIValue(bmiValue: Double) -> String {
        let bmiValueFormatted: String = String(format: "%.2f", bmiValue)
        return bmiValueFormatted
    }
    
}
