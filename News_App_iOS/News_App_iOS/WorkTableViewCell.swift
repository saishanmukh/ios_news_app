//
//  workTableViewCell.swift
//  News_App_iOS
//
//  Created by student on 4/30/22.
//

import UIKit

class WorkTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var wrokInfoOutlet: UITextView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
