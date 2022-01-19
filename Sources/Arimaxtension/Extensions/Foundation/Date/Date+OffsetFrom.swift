//
//  File.swift
//  
//
//  Created by Taichi Arima on 2021/11/09.
//

import Foundation


public extension Date {
    
    /// Refer: https://qiita.com/ShinokiRyosei/items/40ad794a53c75dee1595
    /// Refer: https://www.ie-kau.net/entry/2017/03/21/Swift_%E3%81%A7%E2%97%8B%E2%97%8B%E7%A7%92%E5%89%8D%E3%81%BF%E3%81%9F%E3%81%84%E3%81%AB%E3%81%99%E3%82%8B%E3%82%A8%E3%82%AF%E3%82%B9%E3%83%86%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%B3
    /// Usage:
    /// timeという2016/4/9 8:00:00 という時刻のDate型の変数があるとします。
    /// let year = time.yearFrom() // -> 0年
    /// let days = time.daysFrom() // 1日
    /// let duration = time.offsetFrom() // -> 1日前
    func offsetFrom(numericDates: Bool = true) -> String {
        let calendar = NSCalendar.current
        let now = NSDate()
        let earliest = now.earlierDate(self as Date)
        let latest = (earliest == now as Date) ? self : now as Date
        let components = calendar.dateComponents([.minute , .hour , .day , .weekOfYear , .month , .year , .second], from: earliest, to: latest as Date)
        
        if components.year! >= 2 {
            return "\(components.year!) 年前"
        } else if components.year! >= 1 {
            if numericDates {
                return "1 年前"
            } else {
                return "去年"
            }
        } else if components.month! >= 2 {
            return "\(components.month!) ヶ月前"
        } else if components.month! >= 1{
            if numericDates {
                return "1 ヶ月前"
            } else {
                return "先月"
            }
        } else if components.weekOfYear! >= 2 {
            return "\(components.weekOfYear!) 週間前"
        } else if components.weekOfYear! >= 1 {
            if numericDates {
                return "1 週間前"
            } else {
                return "先週"
            }
        } else if components.day! >= 2 {
            return "\(components.day!) 日前"
        } else if components.day! >= 1 {
            if numericDates {
                return "1 日前"
            } else {
                return "昨日"
            }
        } else if components.hour! >= 2 {
            return "\(components.hour!) 時間前"
        } else if components.hour! >= 1 {
            if numericDates {
                return "1 時間前"
            } else {
                return "1 時間前"
            }
        } else if components.minute! >= 2 {
            return "\(components.minute!) 分前"
        } else if components.minute! >= 1 {
            if numericDates {
                return "1 分前"
            } else {
                return "1 分前"
            }
        } else if components.second! >= 3 {
            return "\(components.second!) 秒前"
        } else {
            return "ついさっき"
        }
        
    }
    
    func yearsFrom() -> Int {
        Calendar.current.dateComponents([.year], from: self, to: Date()).year ?? 0
    }
    func monthsFrom() -> Int {
        Calendar.current.dateComponents([.month], from: self, to: Date()).month ?? 0
    }
    func weeksFrom() -> Int {
        Calendar.current.dateComponents([.weekOfYear], from: self, to: Date()).weekOfYear ?? 0
    }
    func daysFrom() -> Int {
        Calendar.current.dateComponents([.day], from: self, to: Date()).day ?? 0
    }
    func hoursFrom() -> Int {
        Calendar.current.dateComponents([.hour], from: self, to: Date()).hour ?? 0
    }
    func minutesFrom() -> Int {
        Calendar.current.dateComponents([.minute], from: self, to: Date()).minute ?? 0
    }
    func secondsFrom() -> Int {
        Calendar.current.dateComponents([.second], from: self, to: Date()).second ?? 0
    }
    
}
