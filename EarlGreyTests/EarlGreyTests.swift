//
//  EarlGreyTests.swift
//  EarlGreyTests
//
//  Created by Srishti Chhabra on 24/05/18.
//  Copyright © 2018 BrowserStack. All rights reserved.
//

import XCTest
import EarlGrey

class EarlGreyTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAlert() {
        //bring up the alert
        EarlGrey.selectElement(with: grey_accessibilityID("Alert Button"))
            .perform(grey_tap())
        
        //verify that the alert has come
        EarlGrey.selectElement(with: grey_text("This is a native alert.")).assert(grey_sufficientlyVisible())
        
        //dismiss the alert
        EarlGrey.selectElement(with: grey_text("OK")).perform(grey_tap())
    }
    
    func testText() {
        //visit the text page
        EarlGrey.selectElement(with: grey_accessibilityID("Text Button"))
            .perform(grey_tap())
        
        //type some input text
        EarlGrey.selectElement(with: grey_accessibilityID("Text Input"))
            .perform(grey_typeText("hello@browserstack.com\n"))
        
        //verify that text appears in the output field
        EarlGrey.selectElement(with: grey_accessibilityID("Text Output")).assert(grey_text("hello@browserstack.com"))
    }
    
}
