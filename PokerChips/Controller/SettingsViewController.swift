//
//  SettingsViewController.swift
//  PokerChips
//
//  Created by Tao Ong on 4/3/18.
//  Copyright © 2018 Tao Ong. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var currGame : Game!
    
    var delegate : GameViewController?
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        delegate?.game.set_buyin(low: minBuyinStepper.value, high: maxBuyinStepper.value)
        delegate?.game.set_blinds(small: smallBlindsStepper.value, big: bigBlindsStepper.value)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var minBuyin: UILabel!
    @IBOutlet weak var minBuyinStepper: UIStepper!
    @IBAction func minBuyinStepperPressed(_ sender: UIStepper) {
        minBuyin.text = String(sender.value)
    }
    @IBOutlet weak var maxBuyin: UILabel!
    @IBOutlet weak var maxBuyinStepper: UIStepper!
    @IBAction func maxBuyinStepperPressed(_ sender: UIStepper) {
        maxBuyin.text = String(sender.value)
    }
    @IBOutlet weak var smallBlinds: UILabel!
    @IBOutlet weak var smallBlindsStepper: UIStepper!
    @IBAction func smallBlindsStepperPressed(_ sender: UIStepper) {
        smallBlinds.text = String(sender.value)
    }
    @IBOutlet weak var bigBlinds: UILabel!
    @IBOutlet weak var bigBlindsStepper: UIStepper!
    @IBAction func bigBlindsStepperPressed(_ sender: UIStepper) {
        bigBlinds.text = String(sender.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        minBuyin.text = String(currGame.min_buyin)
        maxBuyin.text = String(currGame.max_buyin)
        smallBlinds.text = String(currGame.small_blinds)
        bigBlinds.text = String(currGame.big_blinds)
        minBuyinStepper.value = currGame.min_buyin
        maxBuyinStepper.value = currGame.max_buyin
        smallBlindsStepper.value = currGame.small_blinds
        bigBlindsStepper.value = currGame.big_blinds
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
