//
//  Swift_CPTests.swift
//  Swift-CPTests
//
//  Created by Akshay Kumar on 04/01/24.
//

import XCTest
@testable import Swift_CP

final class Swift_CPTests: XCTestCase {
    var vc: ViewController!
    override func setUpWithError() throws {
        vc = ViewController()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testUnique() {
        let result = vc.findUniqueLetters(input: "No duplicates")
        XCTAssert(result, "Challenge 1 failed")
        XCTAssert(vc.findUniqueLetters(input: "abcdefghijklmnopqrstuvwxyz"), "Challenge 1 failed")
        XCTAssert(vc.findUniqueLetters(input: "AaBbCc"), "Challenge 1 failed")
        XCTAssertFalse(vc.findUniqueLetters(input: "Hello, world"), "Challenge 1 failed")
    }
    func testUniqueWithBetterApproach() {
        let result = vc.findUniqueLetterWithBetterApproach(input: "No duplicates")
        XCTAssert(result, "Challenge 1 failed")
        XCTAssert(vc.findUniqueLetterWithBetterApproach(input: "abcdefghijklmnopqrstuvwxyz"), "Challenge 1 failed")
        XCTAssert(vc.findUniqueLetterWithBetterApproach(input: "AaBbCc"), "Challenge 1 failed")
        XCTAssertFalse(vc.findUniqueLetterWithBetterApproach(input: "Hello, world"), "Challenge 1 failed")
    }
    

    
}
