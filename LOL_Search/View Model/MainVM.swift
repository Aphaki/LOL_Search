//
//  MainVM.swift
//  LOL_Search
//
//  Created by Sy Lee on 2023/06/09.
//

import Foundation
import RxSwift

class MainVM {
    
    let service = Service()
    
    
    // Related Output
    let serchedDetailFinished = PublishSubject<Void>()
    
    init() {
        subscribe()
    }
    
    private func subscribe() {
        
    }
    
    func searchSummonersInfo() {
        
    }
    
}
