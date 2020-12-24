//
//  ViewController.swift
//  GameTicTac
//
//  Created by Сергей Голенко on 23.12.2020.
//

import UIKit

class ViewController: UIViewController {

    
    //Outlets
    @IBOutlet weak var board: UIImageView!
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var playAgainOutletButton: UIButton!
    @IBAction func playAgainButton(_ sender: UIButton) {
        startNewGame()
    }
    
    //Variables
     private var activeGame = true
     private var activePlayer = 1
     var gameState = [0,0,0,0,0,0,0,0,0] // 0 - Empty, 1 - Nought, 2 - Cross
     let winningCombinations = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,8],[2,5,8],[0,4,8],[2,4,6]]
    
    
    

    
    @IBAction func buttonPlayer(_ sender: UIButton) {
        var activePosition = sender.tag - 1
        if gameState[(sender.tag) - 1] == 0 && activeGame {
        if activePlayer == 1 {
        sender.setImage(UIImage(named: "nought"), for:[])
            gameState[activePosition] = 1
            activePlayer = 2
            print(gameState)
        } else if activePlayer == 2 {
            sender.setImage(UIImage(named: "cross"), for:[])
            gameState[activePosition] = 2
            activePlayer = 1
              }
        }
        for combination in winningCombinations{
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]]{
                activeGame = false
                if gameState[combination[0]] == 1 {
                    winLabel.text = "Noughts has won!"
                } else {
                    winLabel.text = "Cross has won!"
                }
                UIView.animate(withDuration: 1) { [self] in
                    self.winLabel.center = CGPoint(x: winLabel.center.x + 500, y: winLabel.center.y)
                    self.winLabel.isHidden = false
                    self.playAgainOutletButton.center = CGPoint(x: playAgainOutletButton.center.x + 500, y: playAgainOutletButton.center.y)
                    self.playAgainOutletButton.isHidden = false
                }
            }
            
        }
        
    }
    
    
  
   
    func startNewGame(){
        winLabel.isHidden = true
        playAgainOutletButton.isHidden = true
        
        winLabel.center = CGPoint(x: winLabel.center.x - 500, y: winLabel.center.y)
        playAgainOutletButton.center = CGPoint(x: playAgainOutletButton.center.x - 500, y: playAgainOutletButton.center.y)
        gameState = [0,0,0,0,0,0,0,0,0]
        activePlayer = 1
        activeGame = true
        
        for i in 1..<10{
            if let button = view.viewWithTag(i) as? UIButton {
                button.setImage(nil, for:[])
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winLabel.isHidden = true
        playAgainOutletButton.isHidden = true
        
        winLabel.center = CGPoint(x: winLabel.center.x - 500, y: winLabel.center.y)
        playAgainOutletButton.center = CGPoint(x: playAgainOutletButton.center.x - 500, y: playAgainOutletButton.center.y)
    }
}

