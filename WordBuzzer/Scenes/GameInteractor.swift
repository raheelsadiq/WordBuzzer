//
//  GameInteractor.swift
//  WordBuzzer
//
//  Created by Raheel Sadiq  on 09/02/2020.
//  Copyright (c) 2020 Raheel Sadiq . All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol GameBusinessLogic {
    func startMatch()
}

protocol GameDataStore {

}

class GameInteractor: GameBusinessLogic, GameDataStore {
    
    var presenter: GamePresentationLogic?
    var worker: GameWorker
    var words = [Game.Word]()
    let players: [Game.Player]
    var match: Game.Matct?
    let numberOfRounds = 11
    let numberOfWrongOptions = 3

    init() {
        worker = GameWorker()
        
        players = [
            Game.Player(score: 0),
            Game.Player(score: 0),
            Game.Player(score: 0),
            Game.Player(score: 0)
        ]
        
        DispatchQueue.global().async { [weak self] in
            self?.words = self?.worker.fetchWords() ?? []
            print(self?.words.count)
        }
    }
    
    func startMatch() {
        
        match = Game.Matct(
            numberOfRounds: numberOfRounds,
            rounds: [
                
        ])
    }
}
