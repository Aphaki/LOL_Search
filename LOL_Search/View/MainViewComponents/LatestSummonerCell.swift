//
//  LatestSummonerCell.swift
//  LOL_Search
//
//  Created by Sy Lee on 2023/06/07.
//

import UIKit

class LatestSummonerCell: UITableViewCell {

    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var summonerName: UILabel!
    @IBOutlet weak var rankTierImage: UIImageView!
    @IBOutlet weak var rankTierLabel: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func config(_ info: DetailSummonerInfo) {
        // 아이콘
        let iconImg = UIImage()
        let url = info.icon.toIconImgURL()
        Task {
           try await iconImg.fetchImage(url: url)
        }
        iconImage.image = iconImg
        
        // 소환사 이름
        summonerName.text = info.summonerName
        
        // 티어 이미지
        let tierLowercase = info.tier.lowercased()
        rankTierImage.image = UIImage(named: tierLowercase)
        
        // 티어 이름
        rankTierLabel.text = info.tier.uppercased()
        
    }
}
