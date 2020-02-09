//
//  GameWorkerTests.swift
//  WordBuzzerTests
//
//  Created by Raheel Sadiq  on 09/02/2020.
//  Copyright © 2020 Raheel Sadiq . All rights reserved.
//

import XCTest
@testable import WordBuzzer


class GameWorkerTests: XCTestCase {

    var gameWorker: GameWorker!
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        gameWorker = GameWorker()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        gameWorker = nil
    }

    func testWordsInitialized() {
        
        let words = gameWorker.fetchWords()
        XCTAssertTrue(words.count>0)
    
    }
}
