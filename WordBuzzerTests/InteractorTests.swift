//
//  InteractorTests.swift
//  WordBuzzerTests
//
//  Created by Raheel Sadiq  on 10/02/2020.
//  Copyright © 2020 Raheel Sadiq . All rights reserved.
//

import XCTest
@testable import WordBuzzer

class GameInteractorTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMatchIsStarted() {
        // This is an example of a performance test case.
        let interactor = GameInteractor()
        let spyPresenter = SpyGamePresenter()
        interactor.presenter = spyPresenter
        interactor.startMatch()
        XCTAssertTrue(spyPresenter.didPresentedAMatch)
    }

    class SpyGamePresenter: GamePresenter {
        var didPresentedAMatch: Bool = false
        override func present(round: Game.Round) {
            // means it presented a round
            didPresentedAMatch = true
        }
    }
}


