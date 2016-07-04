//
//  ViewController.swift
//  Calc
//
//  Created by Nick Calabro on 7/3/16.
//  Copyright © 2016 Nick Calabro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var display: UILabel!
    
    private var userIsTyping = false
    
    @IBAction private func tapDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsTyping {
            let textCurrentlyInDisplay = display.text
            display.text = textCurrentlyInDisplay! + digit
        } else {
            display.text = digit
        }
        userIsTyping = true
    }
    
    private var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    private var brain = Brain() //free initializer
    
    @IBAction private func performOperation(sender: UIButton) {
        if userIsTyping == false {
            brain.setOperand(displayValue)
            userIsTyping = false
        }
        if let mathematicalSymbol = sender.currentTitle {
            brain.performOperaion(mathematicalSymbol)
        }
        displayValue = brain.result
    }
}
