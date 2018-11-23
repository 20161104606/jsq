//
//  ViewController.swift
//  jsq
//
//  Created by 20161104606 on 2018/10/26.
//  Copyright © 2018 20161104606. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var result1: UILabel!
    @IBOutlet weak var result: UILabel!
    
    var re=0
    var add = 0
    var judge = 0
    var number = 0
    var x1 = 0.0
    var x2 = 0.0
    var x3 = 0.0
    var c = 0.0
    var equal1 = 0
    
    @IBAction func number0(_ sender: Any) {
        if re == 1{
            result.text = "0"
        }else{
            result.text = result.text! + "0"
        }
    }
    @IBAction func number1(_ sender: Any) {
        if re == 1{
            result.text = "1"
        }else{
            result.text = result.text! + "1"
        }
    }
    @IBAction func number2(_ sender: Any) {
        if re == 1{
            result.text = "2"
        }else{
            result.text = result.text! + "2"
        }
    }
    @IBAction func number3(_ sender: Any) {
        if re == 1{
            result.text = "3"
        }else{
            result.text = result.text! + "3"
        }
    }
    @IBAction func number4(_ sender: Any) {
        if re == 1{
            result.text = "4"
        }else{
            result.text = result.text! + "4"
        }
    }
    @IBAction func number5(_ sender: Any) {
        if re == 1{
            result.text = "5"
        }else{
            result.text = result.text! + "5"
        }
    }
    @IBAction func number6(_ sender: Any) {
        if re == 1{
            result.text = "6"
        }else{
            result.text = result.text! + "6"
        }
    }
    @IBAction func number7(_ sender: Any) {
        if re == 1{
            result.text = "7"
        }else{
            result.text = result.text! + "7"
        }
    }
    @IBAction func number8(_ sender: Any) {
        if re == 1{
            result.text = "8"
        }else{
            result.text = result.text! + "8"
        }
    }
    @IBAction func number9(_ sender: Any) {
        if re == 1{
            result.text = "9"
        }else{
            result.text = result.text! + "9"
        }
    }
    @IBAction func percent(_ sender: Any) {
        c = Double(result.text!)!
        result1.text = result.text! + "%"
        result.text = String(c * 0.01)
    }
    @IBAction func point(_ sender: Any) {
        if(judge==0)
        {
            result.text = result.text! + "."
            judge=1
        }
        if result.text!.contains("."){
            result.text = result.text!
        }
        else{
            result.text = result.text! + "."
            judge = 1
        }
    }
    @IBAction func equal(_ sender: Any) {
        x2 = Double(result.text!)!
        x1 = Double(result1.text!)!
        if number == 1 {
            x3 = x1 - x2
        }else if number == 2 {
            x3 = x1 + x2
        }else if number == 3 {
            x3 = x1 * x2
        }else if number == 4 {
            x3 = x1 / (x2)
        }
        result1.text=String(format:"%.5f",x3)
        
        result.text = ""
        judge = 0
        equal1 = 1
       
    }
    @IBAction func add(_ sender: Any) {
        if(equal1 == 0)
        {
            x1 = Double(result.text!)!
            result1.text = String(x1)
            result.text = ""
            number=2
            judge = 0
        }
        else
        {
            x1 = Double(result1.text!)!
            result1.text = String(x1)
            result.text = ""
            number=2
            judge = 0
        }
    }
    @IBAction func decrease(_ sender: Any) {
        if(equal1 == 0)
        {
            x1 = Double(result.text!)!
            result1.text = String(x1)
            result.text = ""
            number=1
            judge = 0
        }
        else
        {
            x1 = Double(result1.text!)!
            result1.text = String(x1)
            result.text = ""
            number=1
            judge = 0
        }
    }
    @IBAction func multiply(_ sender: Any) {
        if(equal1 == 0)
        {
            x1 = Double(result.text!)!
            result1.text = String(x1)
            result.text = ""
            number=3
            judge = 0
        }
        else
        {
            x1 = Double(result1.text!)!
            result1.text = String(x1)
            result.text = ""
            number=3
            judge = 0
        }
    }
    @IBAction func divide(_ sender: Any) {
        if(equal1 == 0)
        {
            x1 = Double(result.text!)!
            result1.text = String(x1)
            result.text = ""
            number=4
            judge = 0
        }
        else
        {
            x1 = Double(result1.text!)!
            result1.text = String(x1)
            result.text = ""
            number=4
            judge = 0
        }
    }
    @IBAction func AC(_ sender: Any) {
        result.text = ""
        result1.text = ""
        judge = 0
        equal1 = 0
    }
    
}
