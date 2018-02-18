//
//  Game.swift
//  PokerChips
//
//  Created by Tao Ong on 11/24/17.
//  Copyright © 2017 Tao Ong. All rights reserved.
//

class Game {
    
    // Player Variables
    var max_players : Int
    var num_players : Int
    var players : Array<Player>
    var folded : Array<Player>
    var all_in : Array<Player>
    
    // Money Variables
    var min_buyin : Int
    var max_buyin : Int
    var small_blinds : Double
    var big_blinds : Double
    
    // Game Variables
    var dealer : Int
    var pot : Array<Int>
    var active_pot : Int
    var turn : Int
    var board_bet : Double
    
    init () {
        self.max_players = 9
        self.num_players = 0
        self.players = []
        self.folded = []
        self.all_in = []
        
        self.min_buyin = 10
        self.max_buyin = 50
        self.small_blinds = 0.1
        self.big_blinds = 0.2
        
        self.dealer = 0
        self.pot = []
        self.active_pot = 0
        self.turn = 0
        self.board_bet = 0
    }

    func new_game() -> Void {
        self.players = []
        self.folded = []
        self.all_in = []
        self.dealer = 0
        self.pot = []
        self.active_pot = 0
        self.turn = 0
        self.board_bet = 0
    }
    
    func add_player(player: Player) -> Void {
        
    }
    
    func remove_player(player: Player) -> Void {
        
    }
    
    func set_max_players(num : Int) -> Void {
        if (num < 2) {
            print("too few players")
        }
        if (num > 9) {
            print("too many players")
        }
        else {
            max_players = num
        }
    }
    
    func set_buyin(low: Int, high: Int) -> Void {
        
    }
    
    func set_blinds(small: Double, big: Double) -> Void {
        
    }
    
    
    
}
