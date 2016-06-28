//
//  ViewControllerTests.swift
//  LocalReasoningIBOutlets
//
//  Created by Andy Obusek on 6/27/16.
//  Copyright © 2016 Clean Swifter. All rights reserved.
//

import XCTest
@testable import LocalReasoningIBOutlets

class ViewControllerTests: XCTestCase {

    func testSwitch_DisplaysStoredSwitchState_WhenContentShouldBeKept() {
        // Start the switch on
        UserDefaults.standard().set(true, forKey:"ToggleValue")
        UserDefaults.standard().synchronize()

        let toTest = ViewController()
        let testSwitch = UISwitch()
        toTest.toggleSwitch = testSwitch

        XCTAssertTrue(toTest.toggleSwitch.isOn)
    }

}
