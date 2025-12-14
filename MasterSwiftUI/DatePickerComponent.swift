//
//  DatePickerComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 13/11/25.
//

import SwiftUI
import Foundation

struct DatePickerComponent: View {
    @State var bindingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
    //    formatter.dateStyle = .long
        formatter.timeStyle = .long
        return formatter
    }
    
    var body: some View {
        Text("\(dateFormatter.string(from: bindingDate))")
        DatePicker("", selection: $bindingDate,displayedComponents: .hourAndMinute)
            .padding()
            .datePickerStyle(.wheel)
    }
}

#Preview {
    DatePickerComponent()
}
