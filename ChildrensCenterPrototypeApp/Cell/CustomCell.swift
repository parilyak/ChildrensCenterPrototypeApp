//
//  CustomCell.swift
//  ChildrensCenterPrototypeApp
//
//  Created by Lilya on 26.04.2020.
//  Copyright © 2020 Lilya. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var accessoryLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func customInit(text: String, accessoryText: String) {
        self.titleLabel.text = text
        self.accessoryLabel.text = accessoryText
        
        self.titleLabel.textColor = .white
        self.contentView.backgroundColor = .darkGray
    }
    
}
