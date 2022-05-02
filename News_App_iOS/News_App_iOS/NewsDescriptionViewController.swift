//
//  NewsDescriptionViewController.swift
//  News_App_iOS
//
//  Created by Nagarushyanth Tummala on 4/7/22.
//

import UIKit

class NewsDescriptionViewController: UIViewController {

    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsDescription: UITextView!

    @IBOutlet weak var newsHeadline: UILabel!
    @IBAction func saveNewsButton(_ sender: Any) {
        
    }
    
    var newsItem : News?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsImage.image = newsItem?.image
        newsDescription.text = newsItem?.Description
        newsHeadline.text = newsItem?.Headline
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
