//
//  Player.swift
//  PokerChips
//
//  Created by Tao Ong on 11/8/17.
//  Copyright © 2017 Tao Ong. All rights reserved.
//

import Foundation

class Player {
    
    var name : String
    var seat : Int
    var money : Double
    var currentBet : Double
    var profit : Double
    var playing : Bool
    
    init (playerName : String, seat : Int) {
        self.name = playerName
        self.seat = seat
        self.money = 100
        self.currentBet = 0
        self.profit = 0
        self.playing = false
    }
    
    func restart() -> Void {
        self.money = 0
        self.currentBet = 0
        self.profit = 0
        self.playing = false
    }
    
    func join() -> Void {
        self.playing = true
    }
    
    func leave() -> Void {
        self.playing = false
        self.currentBet = 0
    }
    
}

