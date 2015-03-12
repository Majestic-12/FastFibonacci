//
//  Cache.swift
//  FastFibonacci
//
//  Created by dpark11@icloud.com on 3/11/15.
//  Copyright (c) 2015 majestic-12. All rights reserved.
//

import Foundation

class Cache {
    var cache:[UInt:Double] = [UInt:Double]()
    
    func fibonacci(x:UInt)->Double {
        var result:Double = 0
        if (x < 2) {
            result = Double(x)
        }
        else {
            var fx_1:Double? = cache[x - 1]
            var fx_2:Double? = cache[x - 2]
            
            if (fx_1 == nil) {
                fx_1 = fibonacci(x - 1)
                cache[x - 1] = fx_1!
            }
            
            if (fx_2 == nil) {
                fx_2 = fibonacci(x - 2)
                cache[x - 2] = fx_2!
            }
            result = fx_1! + fx_2!
        }
//        NSLog("result(\(x)):\(result)")
        return result
    }
}
