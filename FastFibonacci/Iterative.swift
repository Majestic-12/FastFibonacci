//
//  Iterative.swift
//  FastFibonacci
//
//  Created by engineering on 3/11/15.
//  Copyright (c) 2015 majestic-12. All rights reserved.
//

import Foundation

class Iterative {
    var fx_i:Int = 0
    var fx_j:Int = 0
    var fx_k:Int = 1
   
    func fibonacci(x:Int)->Int {
        
        for index in 0...x {
            fx_i = fx_j
            fx_j = fx_k
            fx_k = fx_i + fx_j
            NSLog("fx_k:\(fx_k):")
        }
        
        let result = fx_k
        return result
    }
}
