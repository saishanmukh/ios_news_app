//
//  SavedTableViewCell.swift
//  News_App_iOS
//
//  Created by student on 5/2/22.
//

import UIKit

class SavedTableViewCell: UITableViewCell {

    @IBOutlet weak var savedImage: UIImageView!
    @IBOutlet weak var savedHeadLine: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
