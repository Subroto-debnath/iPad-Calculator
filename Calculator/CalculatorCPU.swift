//
//  CalculatorCPU.swift
//  Calculator
//
//  Created by Subroto Debnath on 2023-01-14.
//

import Foundation
import MathExpression

func calculateResult(currText:String) -> String{
    let expression = try? MathExpression(currText)
    let value = expression?.evaluate()
    if value != nil{
       // return String(format:"%g",value!)
        let formatter = NumberFormatter()
        let number = NSNumber(value: value!)
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 16
        return formatter.string(from: number) ?? ""
    }
    return ""
}
