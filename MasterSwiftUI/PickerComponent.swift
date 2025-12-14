//
//  PickerComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 12/11/25.
//

import SwiftUI
import Foundation

struct PickerComponent: View {
    @State var ageNumber: String = "1"
    @State var segmentedStrings: [String] = [
        "Select One",
        "Select Two",
        "Select Three"
    ]
    
    var selectedSegmentDict: [String:String] = [
        "Select One" : "1",
        "Select Two" : "2",
        "Select Three": "3"
    ]
    
    @State var selectedSegment: String
    
    init(selectedSegmentI: String) {
        self.selectedSegment = self.selectedSegmentDict[selectedSegmentI] ?? "1"
        print(self.selectedSegment)
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        UISegmentedControl.appearance().backgroundColor = .green
        
        UISegmentedControl.appearance().setTitleTextAttributes([
            .font : UIFont.systemFont(ofSize: 17),
            .foregroundColor : UIColor.blue
        ], for: .selected)
    }
    
     var body: some View {
        VStack {
//            Picker("Select a number", selection: $ageNumber) {
//                ForEach(1..<100) { agenumber in
//                    Text("\(agenumber)").tag("\(agenumber)")
//                }
//            }
//            .pickerStyle(.menu)
            
            
//            Text("Selected Age is : - \(ageNumber)")
//            Picker(selection: $ageNumber, content: {
//                ForEach(1..<100) { agenumber in
//                    Text("\(agenumber)").tag("\(agenumber)")
//                        .foregroundStyle(.red)
//                }
//            }, label: {
//                HStack {
//                    Text("Select")
//                    Text("De Select")
//                }
//            })
//            .tint(Color.red)
//            .background(Color.gray.opacity(0.4))
//            .pickerStyle(.menu)
            
            Text("Selected Age is : - \(selectedSegment)")
            Picker(selection: $selectedSegment, content: {
                ForEach(segmentedStrings,id: \.self) { segments in
                    Text("\(segments)").tag("\(selectedSegmentDict[segments] ?? "1")")
                        .foregroundStyle(.red)
                }
            }, label: {
                HStack {
                    Text("Select")
                    Text("De Select")
                }
            })
            .pickerStyle(.segmented)
            .padding()
        }
    }
}


#Preview {
    var sp: String  = "Select One"
    PickerComponent(selectedSegmentI: sp)
}
