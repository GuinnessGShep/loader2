//
//  Common.swift
//  palera1nLoader
//
//  Created by Staturnz on 4/10/23.
//

import Foundation
import Extras
import UIKit

let isIpad = UIDevice.current.userInterfaceIdiom
let fm = FileManager.default

struct envInfo {
    static var isRootful: Bool = false
    static var isSimulator: Bool = false
    static var installPrefix: String = "unset"
    static var rebootAfter: Bool = true
    static var jsonURI: String {
        get { UserDefaults.standard.string(forKey: "JsonURI") ?? "https://palera.in/loader.json" }
        set { UserDefaults.standard.set(newValue, forKey: "JsonURI") }
    }
    static var envType: Int = -1
    static var systemVersion: String = "unset"
    static var systemArch: String = "unset"
    static var isInstalled: Bool = false
    static var hasForceReverted: Bool = false
    static var sileoInstalled: Bool = false
    static var zebraInstalled: Bool = false
    static var hasChecked: Bool = false
    static var kinfoFlags: String = ""
    static var pinfoFlags: String = ""
    static var kinfoFlagsStr: String = ""
    static var pinfoFlagsStr: String = ""
    static var jbFolder: String = ""
    static var CF = Int(floor(kCFCoreFoundationVersionNumber / 100) * 100)
    static var bmHash: String = ""
    static var nav: UINavigationController = UINavigationController()
    static var jsonInfo: loaderJSON?
}

// String Localization
public func local(_ str: String.LocalizationValue) -> String {
    return String(localized: str)
}

public func fileExists(_ path: String) -> Bool {
    return fm.fileExists(atPath: path)
}

extension UIApplication {
  public func openSpringBoard() {
    let workspace = LSApplicationWorkspace.default() as! LSApplicationWorkspace
  workspace.openApplication(withBundleID: "com.apple.springboard")
  }
}
