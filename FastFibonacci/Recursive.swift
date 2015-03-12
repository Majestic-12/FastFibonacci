//
//  FibonacciRecursive.swift
//  FastFibonacci
//
//  Created by dpark11@icloud.com on 3/11/15.
//  Copyright (c) 2015 majestic-12. All rights reserved.
//

import Foundation

class Recursive {
   
    func fibonacci(x:Int)->Int {
        var result:Int = 0
        if (x < 2) {
            result = x
        }
        else {
            let fx_1 = fibonacci (x - 1)
            let fx_2 = fibonacci (x - 2)
            result = fx_1 + fx_2
            
//            NSLog("fx_1(\(x - 1)):\(fx_1)")
//            NSLog("fx_2(\(x - 2)):\(fx_2)")
        }
        NSLog("result(\(x)):\(result)")
        return result
    }
}
