//
//  ViewController.swift
//  binary conversion
//
//  Created by apcs2 on 2/5/18.
//  Copyright © 2018 apcs2. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var numTextField: UITextField!
    @IBOutlet weak var binaryText: UILabel!
    @IBOutlet weak var decimalText: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func convertButton(_ sender: UIButton)
    {
//        if numTextField.text! >= String("\(256)")
//        {
//            binaryText.text != convertToBinary(decimal: (numTextField.text! as NSString).integerValue)
//        }
//        else if numTextField.text! <= String("\(256)")
//        {
        binaryText.text = convertToBinary(decimal: (numTextField.text! as NSString).integerValue)
        decimalText.text = ""
//        }
    }
    
    @IBAction func convertToDecimal(_ sender: UIButton)
    {
        decimalText.text = convertDecimal(binaryVal: numTextField.text!)
        binaryText.text = ""
    }
    
    func convertToBinary(decimal: Int) -> String
    {
        var n = 0, c = 0, k: [String] = [], fs: String = ""
        n = decimal
        while n > 0
        {
            c = n % 2
            n = n / 2
            k.append("\(c)")
        }
        for i in k.reversed()
        {
            fs += "\(i)"
        }
        return fs
    }
    
    func convertDecimal(binaryVal: String) -> String
    {
        var result: Int = 0
        for num in binaryVal
        {
            switch num
            {
            case "0": result = result * 2
            case "1": result = result * 2 + 1
            default: return "Error"
            }
        }
        return "\(result)"
    }
    
}
