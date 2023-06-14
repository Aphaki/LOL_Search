//
//  MainVM.swift
//  LOL_Search
//
//  Created by Sy Lee on 2023/06/09.
//

import Foundation
import Combine

class MainVM {
    
    let service = Service()
    
    @Published var noSummonerErrorAlert = PassthroughSubject<(),Never>()
    private (set)var urlBase: UrlHeadPoint = .kr
    private (set)var searchedSummonerDetails: [DetailSummonerInfo] = []
    
    private var cancellable = Set<AnyCancellable>()
    
    init() {
        subscribe()
    }
    
    private func subscribe() {
        // 소환사 검색 - 소환사 없음 에러
        NetworkManager.shared.$noSummonerError
            .sink { completion in
                print("MainVM - noSummonerErrorAlert subscribe completion ")
            } receiveValue: { [weak self] value in
                guard let self = self else { return }
                self.noSummonerErrorAlert = value
            }
            .store(in: &cancellable)
    }
    
    func searchSummonersInfo(name: String) {
        Task {
            let aSearchedSummonerDetail = try await service.saveSearchedSummonerDetail(urlBase: urlBase, name: name)
            self.searchedSummonerDetails.append(aSearchedSummonerDetail)
        }
    }
    
}
