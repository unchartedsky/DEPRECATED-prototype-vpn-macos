//
//  AppDelegate.swift
//  prototype-vpn-macos
//
//  Created by Jason Park on 17/10/2018.
//  Copyright © 2018 Jason Park. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    let popover = NSPopover()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        if let button = statusItem.button {
            button.image = NSImage(named: NSImage.lockLockedTemplateName)
            button.action = #selector(AppDelegate.toggleWindow(sender:))
        }
        
        popover.contentViewController = VpnViewController.loadFromNib()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @objc func toggleWindow(sender: NSStatusBarButton) {
        if popover.isShown {
            popover.performClose(sender)
        } else {
            if let button = statusItem.button {
                popover.show(relativeTo: button.bounds, of: button, preferredEdge: NSRectEdge.minY)
            }
        }
    }
}

