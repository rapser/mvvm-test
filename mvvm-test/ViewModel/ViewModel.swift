//
//  ViewModel.swift
//  PagosDigitales
//
//  Created by miguel tomairo on 5/28/20.
//  Copyright © 2020 miguel tomairo. All rights reserved.
//

import Foundation

class ViewModel {
    
    var helloText = Dynamic("")
    
    func userTriggeredSayHelloButton() {
        helloText.value = "Hello"
    }
    
    var refreshData = { (valor: String) -> () in }
    
    var configureHello: String = "" {
        didSet {
            refreshData("lore ipsum")
        }
    }
    
    func sayHelloButton() {
        refreshData("lore ipsum")
    }
    
    func retreiveData() {
        configureHello = "Bruno"
    }
    
}
