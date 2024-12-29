//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by Ram, Keshaw on 01/12/24.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    
    @Binding var scanCode: String
    @Binding var alertItem: AlertItem?
    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {}
    
    func makeCoordinator() -> Coordinator{
        Coordinator(scannerView: self)
    }
    
    final class Coordinator: NSObject, ScannerVCDelegate {
        
        var scannerView: ScannerView
        
        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }
        
        func didFind(barcode: String) {
            scannerView.scanCode = barcode
        }
        
        func didSurface(error: CameraError) {
            switch error {
            case .invalidDeviceInput :
                scannerView.alertItem = AlertContex.invaildDeviceIput
            case .invalidScannedValue:
                scannerView.alertItem = AlertContex.invalidScannedType
            }
        }
        
        
    }
    
}

#Preview {
    ScannerView(scanCode: .constant("1245678765"), alertItem: .constant(nil) )
}
