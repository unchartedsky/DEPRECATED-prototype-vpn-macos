//
//  VpnViewController.swift
//  prototype-vpn-macos
//
//  Created by Jason Park on 18/10/2018.
//  Copyright © 2018 Jason Park. All rights reserved.
//

import Cocoa

class VpnViewController: NSViewController, NSTableViewDataSource, NSTableViewDelegate {

    @IBOutlet weak var countryLabel: NSTextField!
    
    let countries = ["USA", "Japan", "Hongkong", "Canada", "Germany", "France", "Spain", "Singapore", "Brazil", "India"]
    
    class func loadFromNib() -> VpnViewController {
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateController(withIdentifier: "VpnViewController") as! VpnViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    // MARK: Data Source
    func numberOfRows(in tableView: NSTableView) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any? {
        return countries[row]
    }
    
    func tableViewSelectionDidChange(_ notification: Notification) {
        if let tableView = notification.object {
            countryLabel.stringValue = countries[(tableView as! NSTableView).selectedRow]
        }
    }
}
