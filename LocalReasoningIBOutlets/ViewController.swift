//
//  ViewController.swift
//  LocalReasoningIBOutlets
//
//  Created by Andy Obusek on 6/27/16.
//  Copyright © 2016 Clean Swifter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toggleSwitch: UISwitch! {
        didSet {
            let keep = UserDefaults.standard().bool(forKey: "ToggleValue") ?? false
            toggleSwitch!.setOn(keep, animated: false)
        }
    }

}

