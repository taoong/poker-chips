//
//  ViewController.swift
//  PokerChips
//
//  Created by Tao Ong on 11/8/17.
//  Copyright © 2017 Tao Ong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game = Game()
    
    func updateUI() {
        for player in players {
            if game.turn == player.tag {
                player.backgroundColor = UIColor.green
            } else {
                player.backgroundColor = UIColor.yellow
            }
            if game.folded.contains(player.tag) {
                player.backgroundColor = UIColor.red
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        game.new_game()
        updateUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var players: [UIImageView]!
    
    @IBAction func check(_ sender: Any) {
        game.end_turn()
        updateUI()
    }
    
    @IBAction func bet(_ sender: Any) {
        
    }
    
    @IBAction func fold(_ sender: Any) {
        game.fold(playerTag: game.turn)
        game.end_turn()
        updateUI()
    }
    
}

