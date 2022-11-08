//
//  CalanderView.swift
//  24HANE
//
//  Created by Katherine JANG on 11/8/22.
//

import SwiftUI

struct CalanderView: View {
    
    @State private var date = Date()
    
    var body: some View {
        DatePicker(
            "Start Date",
            selection: $date,
            displayedComponents: [.date]
        )
        .datePickerStyle(.graphical)
    }
}

struct CalanderView_Previews: PreviewProvider {
    static var previews: some View {
        CalanderView()
    }
}
