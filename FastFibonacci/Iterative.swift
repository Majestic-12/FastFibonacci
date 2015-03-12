//
//  Iterative.swift
//  FastFibonacci
//
//  Created by engineering on 3/11/15.
//  Copyright (c) 2015 majestic-12. All rights reserved.
//

import UIKit

class Iterative {
    var fx_i:UInt = 0
    var fx_j:UInt = 0
    var fx_k:UInt = 1
   
    func fibonacci(x:UInt)->UInt {
        
        for index in 0...x {
            fx_i = fx_j
            fx_j = fx_k
            fx_k = fx_i + fx_j
        }
        
        let result = fx_k
        return result
    }
}
