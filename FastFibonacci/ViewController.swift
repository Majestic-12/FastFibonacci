//
//  ViewController.swift
//  FastFibonacci
//
//  Created by dpark11@icloud.com on 3/11/15.
//  Copyright (c) 2015 majestic-12. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

    }

    // MAPK @IBAction
    @IBAction func recursiveFunction(sender: AnyObject) {
        var x:UInt = 5;
        let fx = Iterative()
        NSLog("fibonacci(\(x)):\(fx.fibonacci(x))")
    }
    
    @IBAction func iterativeFunction(sender: AnyObject) {
        var x:UInt = 5;
        let fx = Iterative()
        NSLog("fibonacci(\(x)):\(fx.fibonacci(x))")
    }
    @IBAction func cacheFunction(sender: AnyObject) {
        var x:UInt = 5;
        let fx = Iterative()
        NSLog("fibonacci(\(x)):\(fx.fibonacci(x))")
    }
}

