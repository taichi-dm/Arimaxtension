//
//  File.swift
//  
//
//  Created by Taichi Arima on 2021/11/09.
//

import Foundation

public extension DispatchQueue {
    func debounce(delay: DispatchTimeInterval) -> (_ action: @escaping () -> ()) -> () {
        var lastFireTime = DispatchTime.now()
        return { [weak self, delay] action in
            let deadline = DispatchTime.now() + delay
            lastFireTime = DispatchTime.now()
            self?.asyncAfter(deadline: deadline) { [delay] in
                let now = DispatchTime.now()
                let when = lastFireTime + delay
                if now < when { return }
                lastFireTime = .now()
                action()
            }
        }
    }
}
