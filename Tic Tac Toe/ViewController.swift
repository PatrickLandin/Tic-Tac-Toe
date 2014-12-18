//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Patrick Landin on 12/17/14.
//  Copyright (c) 2014 Patrick Landin. All rights reserved.
//

import UIKit
import Foundation


class ViewController: UIViewController {
    
    var winner = 0
    var goNumber = 1
    var gameProgress = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    // 0 = empty, 1 = X, 2 = O
    
    let winningCombos = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,6], [2,5,8], [0,4,8], [2,4,6]]

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var playAgain: UIButton!
    
    @IBOutlet weak var button0: UIButton!
    
    @IBAction func playAgainPressed(sender: AnyObject) {
        
        var winner = 0
        var goNumber = 1
        var gameProgress = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        
        label.center = CGPointMake(label.center.x - 400, label.center.y)
        playAgain.alpha = 0

        var button : UIButton
        
        for var i = 0; i < 9; i++ {
        
        button = view.viewWithTag(i) as UIButton
        button.setImage(nil, forState: .Normal)
        
        }
    
    }
    
    
    @IBAction func butttonPressed(sender: AnyObject) {
        
        if (gameProgress[sender.tag] == 0 && winner == 0)  {
        
            var image = UIImage()
        
            if (goNumber%2==0) {
                image = UIImage(named: "TictacX")!
                gameProgress[sender.tag] = 1
                
            } else {
                
                image = UIImage(named: "TicTacO")!
                gameProgress[sender.tag] = 2
            }
            
            for combination in winningCombos {
                
                if (gameProgress[combination[0]]) == (gameProgress[combination[1]]) && (gameProgress[combination[1]]) == (gameProgress[combination[2]]) && (gameProgress[combination[0]] != 0) {
                    
                    winner = (gameProgress[combination[0]])
                }
                
            }
            
            if (winner != 0) {
                
                if (winner == 1) {
                    
                    label.text = "Noughts has won!"
                    
                } else {
                    
                    label.text = "Crosses has won!"
                    
                }
                
                UIView.animateWithDuration(0.6, animations: {
                    self.label.center = CGPointMake(self.label.center.x + 400, self.label.center.y)
                    self.playAgain.alpha = 1
                })
                
            }
        
            goNumber++
            sender.setImage(image, forState: .Normal)
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        label.center = CGPointMake(label.center.x - 400, label.center.y)
        
        playAgain.alpha = 0
        
    }


}

