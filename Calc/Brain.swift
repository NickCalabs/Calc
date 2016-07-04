//
//  Brain.swift
//  Calc
//
//  Created by Nick Calabro on 7/3/16.
//  Copyright © 2016 Nick Calabro. All rights reserved.
//

import Foundation

class Brain {
    
    private var accumulator = 0.0
    
    func setOperand(operand: Double) {
        accumulator = operand
    }
    
    var operations: Dictionary<String, Double> = [
        "π": M_PI,
        "e": M_E
    ]
    
    func performOperaion(symbol: String) {
        switch symbol {
        case "π": accumulator = M_PI
        case "√": sqrt(accumulator)
        default: break
        }
    }
    
    var result: Double {
        get {
            return accumulator
        }
    }
}