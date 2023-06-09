//
//  ViewController.swift
//  LOL_Search
//
//  Created by Sy Lee on 2023/06/04.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var searchBar: UISearchBar!
    
    // 최근 검색된 소환사
//    var latestSummoners:
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundedUI()
    }
    
    private func roundedUI() {
        mainTitle.layer.cornerRadius = mainTitle.layer.frame.height / 5
        mainTitle.layer.masksToBounds = true
//        searchBar.layer.cornerRadius = 10
//        searchBar.layer.masksToBounds = true
    }
}

extension MainVC: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let userInputText = searchBar.text else {
            return
        }
        if userInputText == "" {
            let alert = UIAlertController(title: "검색어 없음", message: "검색어를 입력하세요.", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "확인", style: .cancel)
            alert.addAction(alertAction)
            self.present(alert, animated: true)
        } else {
            
        }
    }
}

extension MainVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 // 셀의 갯수
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LatestSummonerCell", for: indexPath) as! LatestSummonerCell
        
        
        return cell
    }
}

