//
//  CalenderHelper.swift
//  24HANE
//
//  Created by Katherine JANG on 11/11/22.
//

import Foundation

func getFirstDateOfMonth(year: Int, month: Int) ->Int {
    let calendar = Calendar.current
    
    let myDateComponents = DateComponents(year: year, month: month)
    
    let startOfMonth = calendar.date(from: myDateComponents)
    let comp1 = calendar.dateComponents([.day, .weekday, .weekOfMonth], from: startOfMonth!)
    
    let nextMonth = calendar.date(byAdding: .month, value:+1, to: startOfMonth!)
    
    if let weekday = comp1.weekday{
        return(weekday - 1)
    }
    return (0)
}

func getLastDayOfMonth(year: Int, month: Int) -> Int{
    let calendar = Calendar.current
    
    let myDateComponents = DateComponents(year: year, month: month)
    
    let startOfMonth = calendar.date(from: myDateComponents)
    
    let nextMonth = calendar.date(byAdding: .month, value:+1, to: startOfMonth!)
    
    let endOfMonth = calendar.date(byAdding: .day, value: -1,  to: nextMonth!)
    
    let comp2 = calendar.dateComponents([.day, .weekday, .weekOfMonth], from: endOfMonth!)
    
    return(comp2.day!)
}

struct CalendarUtils
{
    let calender = Calendar.current
    let date = Date()
    let formatter = DateFormatter()
}

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
