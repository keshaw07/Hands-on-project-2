//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Ram, Keshaw on 01/12/24.
//

import SwiftUI

struct AlertItem : Identifiable {
    var id = UUID()
    let title: String
    let message: String
    let dismissbutton: Alert.Button
}

struct AlertContex {
    static let invaildDeviceIput = AlertItem(title: "Invalid Device input",
                                             message: "Something is wrong with the camera. We are unable to capture the Input", dismissbutton: .default(Text("Ok")))
    static let invalidScannedType = AlertItem(title: "Invalid Scan type",
                                             message: "The value scanned is not valid . This app  scans EAN-8 EAN 13", dismissbutton: .default(Text("Ok")))
    static let sampleinput = AlertItem(title: "Sample input",
                                       message: "Sample test message", dismissbutton: .default(Text("Ok")))
}
