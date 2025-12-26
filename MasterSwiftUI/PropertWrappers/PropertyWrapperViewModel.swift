//
//  PropertyWrapperViewModel.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 23/12/25.
//

import Foundation
import Swift
import Combine


class PropertyWrapperViewModel: ObservableObject {
    @Published var text: String = "Hello, World!"
    
    func changeTheText() {
        text = "Hello Sadath"
    }
}
