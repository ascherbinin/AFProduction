//
//  MenuTableViewCell.swift
//  AFProduction
//
//  Created by Admin on 19.05.17.
//  Copyright © 2017 ASCompany. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var ivItemImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(item: MenuItem)
    {
        lblTitle.text = item.Title;
        ivItemImage.image = UIImage(named: item.ImageName)
    }
}
