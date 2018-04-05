//
//  ViewController.swift
//  PokerChips
//
//  Created by Tao Ong on 11/8/17.
//  Copyright © 2017 Tao Ong. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
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
    
    @IBAction func menuButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
        game.pot[game.active_pot] += stepper.value
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToSettings" {
            if let dest = segue.destination as? SettingsViewController {
                dest.delegate = self
                dest.currGame = game
            }
        }
    }
    
}

