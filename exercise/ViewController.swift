//
//  ViewController.swift
//  exercise
//
//  Created by G on 13/01/2017.
//  Copyright © 2017 erdgabios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    
    var timer = Timer()
    var counter = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTimer() {
        
        counter += 1
        label.text = String(counter)
        
    }
    
    @IBAction func start(_ sender: Any) {
        
        counter = 0
        label.text = String(counter)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func stop(_ sender: Any) {
        
        timer.invalidate()
    }
    
    
    
    
    
    
    

}

