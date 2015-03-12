//
//  Iterative.swift
//  FastFibonacci
//
//  Created by dpark11@icloud.com on 3/11/15.
//  Copyright (c) 2015 majestic-12. All rights reserved.
//

import Foundation

class Iterative {
    var fx_i:Double = 0
    var fx_j:Double = 0
    var fx_k:Double = 1
   
    func fibonacci(x:UInt)->Double {
        var result:Double = 0
        if (x < 2) {
            result = Double(x)
        }
        else {
            for index in 2...x {
                fx_i = fx_j
                fx_j = fx_k
                fx_k = fx_i + fx_j
                
//                NSLog("fx_i(\(index)):\(fx_i)")
//                NSLog("fx_j(\(index)):\(fx_j)")
//                NSLog("fx_k(\(index)):\(fx_k)")
            }
            result = fx_k
        }
        
//        NSLog("result(\(x)):\(result)")
        return result
    }
}
