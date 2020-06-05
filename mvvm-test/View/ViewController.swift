//
//  ViewController.swift
//  PagosDigitales
//
//  Created by miguel tomairo on 5/28/20.
//  Copyright © 2020 miguel tomairo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    
    var viewModel =  ViewModel()
    var saludo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        bindViewModel()
        bind()
        
    }
    

    func bindViewModel() {
        viewModel.helloText.bind({ (helloText) in
            DispatchQueue.main.async {
                self.helloLabel.text = helloText
            }
        })
        
    }
    
    func bind() {
        viewModel.refreshData = { [weak self] (miguel) in
            DispatchQueue.main.async {
                self?.helloLabel.text = miguel
            }
        }
    }
    
    
    @IBAction func sayHelloButtonPressed(_ sender: UIButton) {
//        viewModel.userTriggeredSayHelloButton()
        viewModel.sayHelloButton()
//        viewModel.sayHelloButton()
    }

}

