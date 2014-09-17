//
//  ViewController.swift
//  99 Red Balloons
//
//  Created by Arash Sadeghieh E on 17/09/2014.
//  Copyright (c) 2014 Arash Sadeghieh Eshtehadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var balloonNumberLabel: UILabel!
    @IBOutlet weak var balloonImageView: UIImageView!
    
    var redBalloons:[RedBalloon] = []
    
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funcRedBalloon()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func funcRedBalloon() {
        var balloon = RedBalloon()
        
        for var balloonCount = 1; balloonCount <= 100; balloonCount++ {
            
            balloon.redBalloonsNumber = balloonCount
            
            var randomNumber = Int(arc4random_uniform(UInt32(4)))
            
            switch randomNumber {
            case 0 :
                balloon.image = UIImage(named: "RedBalloon1.jpg")
            case 1 :
                balloon.image = UIImage(named: "RedBalloon2.jpg")
            case 2 :
                balloon.image = UIImage(named: "RedBalloon3.jpg")
            default :
                balloon.image = UIImage(named: "RedBalloon4.jpg")
            }
            
            self.redBalloons.append(balloon)
        }
    }
    
    @IBAction func nextButtonPressed(sender: UIBarButtonItem) {
        let balloon = redBalloons[self.currentIndex]
        
        balloonNumberLabel.text = "\(balloon.redBalloonsNumber)"
        balloonImageView.image = balloon.image
        
        currentIndex += 1

    }

    
}

