//
//  PokerChipsTests.swift
//  PokerChipsTests
//
//  Created by Tao Ong on 4/7/18.
//  Copyright © 2018 Tao Ong. All rights reserved.
//

import XCTest

class PokerChipsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTurnEnding() {
        // This is an example of a functional test case.
        let game = Game()
        game.new_game()
        for _ in 1...game.num_players {
            game.end_turn()
        }
        XCTAssertEqual(game.turn, 0)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        let game = Game()
        self.measure {
            game.end_turn()
        }
    }
    
}
