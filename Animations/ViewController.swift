//
//  ViewController.swift
//  Animations
//
//  Created by PASHA on 07/08/18.
//  Copyright © 2018 Pasha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imag: UIImageView!
    var timer = Timer()
    var count = 1
    var isAnimating = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("simple animating ......")
        
        print("1234567890")
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func startTap(_ sender: UIButton) {
        
        if isAnimating {
            timer.invalidate()
            sender.setTitle("Start Animating......", for: [])
            isAnimating = false
            
        }
        
        else
        {
             timer = Timer.scheduledTimer(timeInterval: 001, target: self, selector: #selector(animatingAction), userInfo: nil, repeats: true)
             sender.setTitle("Stop Animating......", for: [])
            isAnimating = true
        }
        
       
       
        
        
    }
    
   @objc func animatingAction(){
    
     self.imag.image =  UIImage(named: "frame_\(count)_delay-0s.png")
       count += 1
    
        if count == 11 {
            count = 0
        }
    
    
    }
    
    @IBAction func fradeTap(_ sender: Any) {
        
        self.imag.alpha = 0
        
        UIView.animate(withDuration: 01) {
            self.imag.alpha = 1
        }
    }
    
    @IBAction func slideTap(_ sender: Any) {
        
        self.imag.center = CGPoint(x: self.imag.center.x-500, y: self.imag.center.y)
        
        UIView.animate(withDuration: 02) {
            
            self.imag.center = CGPoint(x: self.imag.center.x+500, y: self.imag.center.y)
        }
       
    }
    @IBAction func growTap(_ sender: Any) {
        
         self.imag.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        UIView.animate(withDuration: 01) {
            
            self.imag.frame = CGRect(x: 40, y: 105, width: 240, height: 240)
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

