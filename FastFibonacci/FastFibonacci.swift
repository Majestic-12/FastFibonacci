//
//  FastFibonacci.swift
//  FastFibonacci
//
//  Created by engineering on 3/12/15.
//  Copyright (c) 2015 majestic16. All rights reserved.
//

import Foundation

class FastFibonacci:Iterative{
    
    func memoize<T:Hashable, U>(fn : T -> U) -> T -> U {
        var cache = [T:U]()
        return {
            (val : T) -> U in
            var value = cache[val]
            if value != nil {
                return value!
            } else {
                let newValue = fn(val)
                cache[val] = newValue
                return newValue
            }
        }
    }
    
    func fastfibonacci(x:UInt)->Double {
        var memoized = memoize(super.fibonacci)
        let sigma = memoized(x)
        return sigma
    }
   
}
