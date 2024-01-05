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
        /*  Q1 :  unique string */
        //let result = findUniqueLetterWithBetterApproach(input: "A,A")
        //print("--->\(result)")
        
        
        /*  Q2 : Find string palindrome */
       // let result1 = self.findStringPalindrome(input: "Hello, world")
        let result1 = self.findStringPalindrome1(input: "Hello, world")
        print(result1)
    }
    // brute force
    
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
    // better approach
    func findUniqueLetterWithBetterApproach(input: String) -> Bool {
        return Set(input).count == input.count
    }
    
    func findStringPalindrome(input: String) -> Bool {
        print("input:\(input)")
        let reveresed = String(input.reversed())
        print("reversed:->\(reveresed)")
        if input == reveresed {
            return true
        } else {
            return false
        }
    }
    func findStringPalindrome1(input: String) -> Bool {
        print(Array(input))
        print(input.reversed())
       return input.reversed() == Array(input)
    }

}

