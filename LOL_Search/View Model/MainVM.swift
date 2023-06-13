//
//  MainVM.swift
//  LOL_Search
//
//  Created by Sy Lee on 2023/06/09.
//

import Foundation
import RxSwift
import RxRelay

class MainVM {
    
    let service = Service()
    
    // Related Input
//    let summonerName = BehaviorRelay<String>(value: "")
    
    
    // Related Output
    let serchedDetailFinished = PublishSubject<Void>()
    
    private (set)var urlBase: UrlHeadPoint = .kr
    private (set)var searchedSummonerDetail: DetailSummonerInfo? = nil
    
    init() {
        subscribe()
    }
    
    private func subscribe() {
        
    }
    
    func searchSummonersInfo(name: String) {
        Task {
           try await service.saveSearchedSummonerDetail(urlBase: urlBase, name: name)
        }
    }
    
}
