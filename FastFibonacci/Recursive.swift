//
//  FibonacciRecursive.swift
//  FastFibonacci
//
//  Created by dpark11@icloud.com on 3/11/15.
//  Copyright (c) 2015 majestic-12. All rights reserved.
//

import Foundation

class Recursive {
   
    func fibonacci(x:UInt)->UInt {
        var result:UInt = 0
        if (x < 2) {
            result = x
        }
        else {
            var fx_1 = fibonacci (x - 1)
            var fx_2 = fibonacci (x - 2)
            result = fx_1 + fx_2
        }
        return result
    }
}
