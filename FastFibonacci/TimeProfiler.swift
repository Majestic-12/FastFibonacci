//
//  TimeProfiler.swift
//  FastFibonacci
//
//  Created by dpark11@icloud.com on 3/12/15.
//  Copyright (c) 2015 majestic-12. All rights reserved.
//

import Foundation

class TimeProfiler{
 
    func elapsed(startDate:NSDate)->String{
        let timeIntervalSinceNow: NSTimeInterval = startDate.timeIntervalSinceNow;
        return "\(timeIntervalSinceNow)"
    }
    
    func elapsed(closure:()->())->String{
        let startDate = NSDate()
        closure()
        let timeIntervalSinceNow: NSTimeInterval = startDate.timeIntervalSinceNow
        let elapsedInt:Int = Int(timeIntervalSinceNow * -1)
        NSLog("elapsed:\(timeIntervalSinceNow)")
        return "\(elapsedInt)"
    }
}
