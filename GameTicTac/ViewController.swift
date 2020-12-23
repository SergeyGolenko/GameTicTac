//
//  ViewController.swift
//  GameTicTac
//
//  Created by Сергей Голенко on 23.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var board: UIImageView!
    
    var activePlayer = 1
    
    var gameState = [0,0,0,0,0,0,0,0,0] // 0 - Empty, 1 - Nought, 2 - Cross
    
    
    

    
    @IBAction func buttonPlayer(_ sender: UIButton) {
        
        
        if gameState[(sender.tag) - 1] == 0 {
        
        
        if activePlayer == 1 {
        sender.setImage(UIImage(named: "nought"), for:[])
            gameState[sender.tag - 1] = 1
            activePlayer = 2
            print(gameState)
        } else if activePlayer == 2 {
            sender.setImage(UIImage(named: "cross"), for:[])
            gameState[sender.tag - 1] = 2
            activePlayer = 1
            print(gameState)
            
        }
            
        }
        
    }
    
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

