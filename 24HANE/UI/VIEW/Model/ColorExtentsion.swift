//
//  ColorExtentsion.swift
//  24HANE
//
//  Created by Katherine JANG on 11/7/22.
//

import SwiftUI

extension Color{
    static let bg_navy = Color(hex: "06283D")
    static let progressbarblue = Color(hex: "256D85")
}

extension Color{
    
    init(hex:String){
        let scanner = Scanner(string:hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double((rgb >> 0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue:b)
    }
}
