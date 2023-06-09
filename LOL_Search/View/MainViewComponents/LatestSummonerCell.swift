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
    
}
