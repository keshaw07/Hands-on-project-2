//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Ram, Keshaw on 01/12/24.
//

import SwiftUI
 
final class BarcodeScannerViewModel: ObservableObject {
    
    @Published  var scannerCode = String()
    @Published  var alertItem: AlertItem?
    
    var statusText: String {
       scannerCode.isEmpty ? "Not Yet Scanned" : scannerCode
    }
    
    var colorStatus: Color {
        scannerCode.isEmpty ? .red : .green
    }
}
    
