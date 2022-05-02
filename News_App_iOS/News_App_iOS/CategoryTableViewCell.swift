//
//  CategoryTableViewCell.swift
//  News_App_iOS
//
//  Created by student on 5/1/22.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var categoryHeadline: UITextView!
    @IBOutlet weak var categoryImage: UIImageView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
