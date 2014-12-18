//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Patrick Landin on 12/17/14.
//  Copyright (c) 2014 Patrick Landin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var goNumber = 1
    var gameProgressArray = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    // 0 = empty, 1 = X, 2 = O
    
    let winningCombos = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,6], [2,5,8], [0,4,8], [2,4,6]]

    @IBOutlet weak var button0: UIButton!
    
    @IBAction func butttonPressed(sender: AnyObject) {
        
        if (gameProgressArray[sender.tag] == 0)  {
        
            var image = UIImage()
        
            if (goNumber%2 == 0) {
            
                image = UIImage(named: "TictacX")
                gameProgressArray[sender.tag] = 1
                
            } else {
                
                image = UIImage(named: "TicTacO")
                gameProgressArray[sender.tag] = 2
            }
            
            for combination in winningCombos {
                
                if (gameProgressArray[combination[0]]) ==
                
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


}

