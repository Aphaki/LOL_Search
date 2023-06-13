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
    
    private (set)var urlBase: UrlHeadPoint = .kr
    private (set)var searchedSummonerDetails: [DetailSummonerInfo] = []
    
    init() {
        subscribe()
    }
    
    private func subscribe() {
        
    }
    
    func searchSummonersInfo(name: String) {
        Task {
            let value = try await service.saveSearchedSummonerDetail(urlBase: urlBase, name: name)
            self.searchedSummonerDetails.append(value)
        }
    }
    
}
