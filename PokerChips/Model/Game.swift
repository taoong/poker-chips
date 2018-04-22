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
    var folded : Array<Int>
    var all_in : Array<Player>
    
    // Money Variables
    var min_buyin : Double
    var max_buyin : Double
    var small_blinds : Double
    var big_blinds : Double
    
    // Game Variables
    var dealer : Int
    var sb : Int
    var bb : Int
    var pot : Array<Double>
    var active_pot : Int
    var turn : Int
    var board_bet : Double
    
    init () {
        self.max_players = 9
        self.num_players = 0
        self.players = []
        self.folded = []
        self.all_in = []
        
        self.min_buyin = 100
        self.max_buyin = 200
        self.small_blinds = 1
        self.big_blinds = 2
        
        self.dealer = 0
        self.sb = 1
        self.bb = 2
        self.pot = [0]
        self.active_pot = 0
        self.turn = 0
        self.board_bet = 0
    }

    func new_game() -> Void {
        self.players = [Player(playerName: "Alex", seat: 0),
                        Player(playerName: "Benny", seat: 1),
                        Player(playerName: "Chris", seat: 2),
                        Player(playerName: "Dave", seat: 3),
                        Player(playerName: "Evan", seat: 4),
                        Player(playerName: "Frank", seat: 5),
                        Player(playerName: "Grant", seat: 6),
                        Player(playerName: "Hank", seat: 7),
                        Player(playerName: "Ivan", seat: 8)]
        self.num_players = 9
        self.folded = []
        self.all_in = []
        self.dealer = 0
        self.pot = [0]
        self.active_pot = 0
        self.turn = 0
        self.board_bet = 0
    }
    
    func add_player(player: Player) -> Void {
        
    }
    
    func remove_player(player: Player) -> Void {
        
    }
    
    func set_buyin(low: Double, high: Double) -> Void {
        self.min_buyin = low
        self.max_buyin = high
    }
    
    func set_blinds(small: Double, big: Double) -> Void {
        self.small_blinds = small
        self.big_blinds = big
    }
    
    func end_turn() {
        self.turn += 1
        if self.turn == self.num_players {
            self.turn = 0
        }
        while self.folded.contains(self.turn) {
            self.turn += 1
            if self.turn == self.num_players {
                self.turn = 0
            }
        }
    }
    
    func end_round() {
        self.dealer += 1
        self.sb += 1
        self.bb += 1
        if self.dealer == self.num_players {
            self.dealer = 0
        }
        if self.sb == self.sb {
            self.sb = 0
        }
        if self.bb == self.bb {
            self.bb = 0
        }
    }
    
    func fold(playerTag: Int) {
        folded.append(playerTag)
    }
    
}
