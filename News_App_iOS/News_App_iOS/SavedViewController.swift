//
//  SavedViewController.swift
//  News_App_iOS
//
//  Created by student on 4/6/22.
//

import UIKit

class SavedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var savedNews = [News]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count = 0
        savedNews = [News]()
        for newsItem in news {
            if newsItem.isSaved ==  true{
                count += 1
                savedNews.append(newsItem)
            }
        }
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = savedTableView.dequeueReusableCell(withIdentifier: "SavedCell", for: indexPath) as! SavedTableViewCell
        
        let _news = savedNews[indexPath.row]
        
        cell.savedImage.image = _news.image
        
        cell.selectionStyle = .none
        
        cell.savedHeadLine.text = _news.Headline

        cell.savedHeadLine.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.footnote)
        return cell
    }
    @IBOutlet weak var savedTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        savedTableView.delegate = self
        savedTableView.dataSource = self
        
        savedTableView.rowHeight = UITableView.automaticDimension

        savedTableView.estimatedRowHeight = 50
        
        NotificationCenter.default.addObserver(forName: UIContentSizeCategory.didChangeNotification, object: .none, queue: OperationQueue.main) { [weak self] _ in
          self?.savedTableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "DetailSegue"{
            let destination = segue.destination as! NewsDescriptionViewController
            
            //Assigning product to the destination
            destination.newsItem = savedNews[(savedTableView.indexPathForSelectedRow?.row)!]
        }
    }

}
