//
//  Cache.swift
//  FastFibonacci
//
//  Created by engineering on 3/11/15.
//  Copyright (c) 2015 majestic-12. All rights reserved.
//

import Foundation

class Cache {
    var cache:[Int:Int] = [Int:Int]()
    
    func fibonacci(x:Int)->Int {
        var result:Int = 0
        if (x < 2) {
            result = x
        }
        else {
            var fx_1 = cache[x - 1]
            var fx_2 = cache[x - 2]
            
            if (fx_1 != nil) {
                fx_1 = fibonacci(x - 1)
                cache[x - 1] = fx_1
            }
            
            if (fx_2 != nil) {
                fx_2 = fibonacci(x - 2)
                cache[x - 2] = fx_2
            }
            result = fx_1! + fx_2!
        }
        return result
    }
}
