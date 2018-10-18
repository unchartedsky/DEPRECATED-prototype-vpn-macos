//
//  VpnViewController.swift
//  prototype-vpn-macos
//
//  Created by Jason Park on 18/10/2018.
//  Copyright © 2018 Jason Park. All rights reserved.
//

import Cocoa

class VpnViewController: NSViewController {

    class func loadFromNib() -> VpnViewController {
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateController(withIdentifier: "VpnViewController") as! VpnViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
