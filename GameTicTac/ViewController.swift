//
//  ViewController.swift
//  GameTicTac
//
//  Created by Сергей Голенко on 23.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var board: UIImageView!
    
    
    @IBOutlet weak var buttonPlayerOutlet: UIButton!
    
    @IBAction func buttonPlayer(_ sender: UIButton) {
        print(sender.tag)
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

