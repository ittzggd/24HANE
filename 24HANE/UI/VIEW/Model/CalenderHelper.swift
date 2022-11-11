//
//  CalenderHelper.swift
//  24HANE
//
//  Created by Katherine JANG on 11/11/22.
//

import Foundation

class CalendarHelper
{
    let calendar = Calendar.current
    let dateFormatter = DateFormatter()
    
    func monthYearString(_ date: Date) -> String{
        dateFormatter.dateFormat = "LLL yyyy"
        return dateFormatter.string(from: date)
    }
    
    func plusMonth(_ date: Date) -> Date
    {
        return calendar.date(byAdding: .month, value: 1, to:date)!
    }
    
    func minusMonth(_ date: Date) ->Date
    {
        return calendar.date(byAdding: .month, value: -1, to: date)!
    }
    
    func daysInMonth(_ date: Date) -> Int{
        let range = calendar.range(of: .day, in :.month, for: date)!
        return range.count
    }
    
    func dayOfMonth(_ date: Date) -> Int{
        let components = calendar.dateComponents([.day], from: date)
        return components.day!
    }
    
    func firstOfMonth(_ date: Date) -> Int
    {
        let components = calendar.dateComponents([.year, .month], from: date)
        return components.day!
    }
}
