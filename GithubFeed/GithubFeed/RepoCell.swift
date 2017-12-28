//
//  RepoCell.swift
//  GithubFeed
//
//  Created by Viet Nguyen Tran on 12/27/17.
//  Copyright © 2017 Viet Nguyen Tran. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension RepoCell {
    struct RepoCellViewModel {
        var name: String
    }
    
    func bind(with data: RepoCellViewModel) {
        nameLabel.text = data.name
    }
}
