//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Ram, Keshaw on 01/12/24.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    
    @StateObject private var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {

                ScannerView(scanCode: $viewModel.scannerCode,
                            alertItem: $viewModel.alertItem)
                    .frame(width: 500, height: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode", systemImage: "qrcode.viewfinder")
                    .font(.title)
                
                Text(viewModel.statusText)
                    .bold()
                    .font(.title)
                    .foregroundColor(viewModel.colorStatus)
                    .padding()
                
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dismissbutton)
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
