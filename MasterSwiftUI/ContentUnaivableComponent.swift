//
//  ContentUnaivableComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 12/12/25.
//

import SwiftUI

struct ContentUnaivableComponent: View {
    var body: some View {
        if #available(iOS 17.0, *) {
            ContentUnavailableView("Wifi", systemImage: "wifi.slash", description: Text("Checkout Wifi is Disabled")
                .fontWeight(.bold)
            )
            ContentUnavailableView.search(text: "Search")
        } else {
            // Fallback on earlier versions
        }
    }
}

#Preview {
    ContentUnaivableComponent()
}
