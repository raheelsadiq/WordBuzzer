//
//  ResultViewController.swift
//  WordBuzzer
//
//  Created by Raheel Sadiq  on 10/02/2020.
//  Copyright (c) 2020 Raheel Sadiq . All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ResultDisplayLogic: class {
    func displayWinner(title: String)
}

class ResultViewController: UIViewController, ResultDisplayLogic {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var interactor: ResultBusinessLogic?
    var router: (NSObjectProtocol & ResultRoutingLogic & ResultDataPassing)?
    
    // MARK: - Object lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: - Setup
    
    private func setup() {
        let viewController = self
        let interactor = ResultInteractor()
        let presenter = ResultPresenter()
        let router = ResultRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    // MARK: - Routing
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.requestWinnerName()
    }
    
    // MARK: - Make Request

    // MARK: - Display
    
    func displayWinner(title: String) {
        nameLabel.text = title
    }
    
    @IBAction func rematchAction(){
        dismiss(animated: true, completion: nil)
    }

}