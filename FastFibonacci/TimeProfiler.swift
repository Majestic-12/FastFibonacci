//
//  TimeProfiler.swift
//  FastFibonacci
//
//  Created by engineering on 3/12/15.
//  Copyright (c) 2015 majestic16. All rights reserved.
//

import Foundation

class TimeProfiler{
 
    func elapsed(startDate:NSDate)->String {
        let timeIntervalSinceNow: NSTimeInterval = startDate.timeIntervalSinceNow;
        return "\(timeIntervalSinceNow)"
    }
    
    func elapsed(closure:()->())->String {
        let startDate:NSDate = NSDate()
        closure()
        let timeIntervalSinceNow: NSTimeInterval = startDate.timeIntervalSinceNow
        let elapsedInt:Int = Int(timeIntervalSinceNow)
        return "\(elapsedInt)"
    }
}
