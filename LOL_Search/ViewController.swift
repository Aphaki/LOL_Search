//
//  ViewController.swift
//  LOL_Search
//
//  Created by Sy Lee on 2023/06/04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainTitle: UILabel!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTitle.layer.cornerRadius = 10
        mainTitle.layer.masksToBounds = true
        
        searchBar.layer.cornerRadius = 10
        searchBar.layer.masksToBounds = true
    }
    
}

extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let userInputText = searchBar.text else {
            return
        }
        if userInputText == "" {
            let alert = UIAlertController(title: "검색어 없음", message: "검색어를 입력하세요.", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "확인", style: .cancel)
            alert.addAction(alertAction)
            self.present(alert, animated: true)
        }
    }
}

