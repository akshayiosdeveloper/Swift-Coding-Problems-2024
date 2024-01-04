//
//  ViewController.swift
//  Swift-CP
//
//  Created by Akshay Kumar on 04/01/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       //let result =  findUniqueLetters(input: "A,A")
        let result = findUniqueLetterWithBetterApproach(input: "A,A")
        print("--->\(result)")
    }
    func findUniqueLetters(input: String) -> Bool {
        let letters = input.map({String($0)})
        print(letters)
        var stringArray = [String]()
        for char in letters {
            if !stringArray.contains(char) {
                stringArray.append(char)
               print(stringArray)
            } else {
                return false
            }
        }
        return true
    }
    func findUniqueLetterWithBetterApproach(input: String) -> Bool {
        return Set(input).count == input.count
    }

}

