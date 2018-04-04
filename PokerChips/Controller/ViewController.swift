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
    
    func updateBlinds() {
        stepper.minimumValue = game.big_blinds
        stepper.value = game.big_blinds
        betValue.text = String(stepper.value)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        game.new_game()
        updateUI()
        updateBlinds()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var pot: UILabel!
    
    @IBOutlet var players: [UIImageView]!
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        betValue.text = String(sender.value)
    }
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var betValue: UILabel!
    
    @IBAction func check(_ sender: Any) {
        end_turn()
    }
    
    @IBAction func bet(_ sender: Any) {
        pot.text = String(Double(pot.text!)! + stepper.value)
        end_turn()
    }
    
    @IBAction func fold(_ sender: Any) {
        game.fold(playerTag: game.turn)
        end_turn()
    }
    
    func end_turn() {
        stepper.value = game.big_blinds
        betValue.text = String(stepper.value)
        game.end_turn()
        updateUI()
    }
    
}

