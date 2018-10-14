//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Macbook on 14/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray: [String] = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber : Int = 0
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askQuestion(_ sender: Any) {
        newBallImage()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }

    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
}

