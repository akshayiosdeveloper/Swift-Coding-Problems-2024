//
//  ViewController.swift
//  Swift-CP
//
//  Created by Akshay Kumar on 04/01/24.
//

import UIKit
import OSLog

class ViewController: UIViewController {
    let logger = Logger(subsystem: "a", category: "info")
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
       //let result =  findUniqueLetters(input: "A,A")
        /*  Q1 :  unique string */
        //let result = findUniqueLetterWithBetterApproach(input: "A,A")
        //print("--->\(result)")
        
        
        /*  Q2 : Find string palindrome : O(1)
       // let result1 = self.findStringPalindrome(input: "Hello, world")
        let result1 = self.findStringPalindrome1(input: "Hello, world")
        print(result1)
         */
        
        /* Q3 :*/
       // let result = self.findTwoStringContainSameCharacters(string1: "a1 b2", string2: "b1 a2")
       // print(result)
        /* Q4 : */
       let result =  self.containsString(inputString: "o", actualString: "Hello, world")
        print(result)
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
   /* Q3 : two strings contain the same characters
    The strings “abca” and “abca” should return true.
    The strings “abc” and “Abc” should return false.
    */
    func findTwoStringContainSameCharacters(string1: String , string2: String) -> Bool {
        if string1.count == string2.count {
            let set1 = Set(string1)
            let set2 = Set(string2)
            if set1  == set2 {
                return true
            } else {
                return false
            }
        } else {
            return false
        }
    }
    /* Q4 : Does one string contain other
     • The code "Hello, world".fuzzyContains("Hello") should return true.
     • The code "Hello, world".fuzzyContains("WORLD") should return true.
     • The code "Hello, world".fuzzyContains("Goodbye") should return
     false.
     */
    func containsString(inputString: String,actualString:String) -> Bool {
        let range = actualString.range(of: inputString,options: .caseInsensitive)
        print("range:\(range)")
        if range != nil {
        return true
        } else {
            return false
        }
       // self.logger.log(level: .debug, "range\(range)")
    }
}

