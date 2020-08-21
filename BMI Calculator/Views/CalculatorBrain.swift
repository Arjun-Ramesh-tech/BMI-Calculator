//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by arjrames on 16/08/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi :BMI?

    func getBMIValue()->String{
        return String(format: "%0.1f",bmi?.value ?? 0.0)
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    func getColor()->UIColor{
        return bmi?.color ?? UIColor.white
    }
    mutating func calculateBMI(height:Float ,weight:Float){
        let bmiValue = weight / pow(height,2)
        print(bmiValue)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat A Lot Of Pies!!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))}
        else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit As A Fiddle!!!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))}
        else{
        bmi = BMI(value: bmiValue, advice: "Eat Less Pies!!!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1) )}
    }
}
