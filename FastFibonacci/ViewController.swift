//
//  ViewController.swift
//  FastFibonacci
//
//  Created by dpark11@icloud.com on 3/11/15.
//  Copyright (c) 2015 majestic-12. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var xTextField: UITextField!
    @IBOutlet weak var fibonacciTextField: UITextField!
    @IBOutlet weak var elapsedTextField: UITextField!
    
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
        xTextField.becomeFirstResponder();
    }
    
    

    // MAPK @IBAction
    @IBAction func recursiveFunction(sender: AnyObject) {
        var x:Int = (xTextField.text as NSString).integerValue;
        let fx = Recursive()

        let profiler = TimeProfiler()
        let elapsed = profiler.elapsed() {
            let sigma = fx.fibonacci(x);
            NSLog("recursive fibonacci(\(x)):\(sigma)")
            self.fibonacciTextField.text = "\(sigma)"
        }
        elapsedTextField.text = "\(elapsed)"
    }
    
    @IBAction func iterativeFunction(sender: AnyObject) {
        var x:Int = (xTextField.text as NSString).integerValue;
        let fx = Recursive()
        
        let profiler = TimeProfiler()
        let elapsed = profiler.elapsed() {
            let sigma = fx.fibonacci(x);
            NSLog("iterative fibonacci(\(x)):\(sigma)")
            self.fibonacciTextField.text = "\(sigma)"
        }
        elapsedTextField.text = "\(elapsed)"
    }
    @IBAction func cacheFunction(sender: AnyObject) {
        var x:Int = (xTextField.text as NSString).integerValue;
        let fx = Recursive()
        
        let profiler = TimeProfiler()
        let elapsed = profiler.elapsed() {
            let sigma = fx.fibonacci(x);
            NSLog("fast fibonacci(\(x)):\(sigma)")
            self.fibonacciTextField.text = "\(sigma)"
        }
        elapsedTextField.text = "\(elapsed)"
    }
}

