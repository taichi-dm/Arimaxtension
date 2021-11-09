//
//  File.swift
//  
//
//  Created by Taichi Arima on 2021/11/09.
//

import Foundation


public extension Date {
    
    /// Refer: https://qiita.com/ShinokiRyosei/items/40ad794a53c75dee1595
    /// Usage:
    /// timeという2016/4/9 8:00:00 という時刻のDate型の変数があるとします。
    /// let year = time.yearFrom() // -> 0年
    /// let days = time.daysFrom() // 1日
    /// let duration = time.offsetFrom() // -> 1日前
    func offsetFrom() -> String {
        if yearsFrom()   > 0 { return "\(yearsFrom())年前" }
        if monthsFrom()  > 0 { return "\(monthsFrom())ヶ月前" }
        if weeksFrom()   > 0 { return "\(weeksFrom())週間前" }
        if daysFrom()    > 0 { return "\(daysFrom())日前" }
        if hoursFrom()   > 0 { return "\(hoursFrom())時間前" }
        if minutesFrom() > 0 { return "\(minutesFrom())分前" }
        if secondsFrom() > 0 { return "\(secondsFrom())秒前" }
        return ""
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
