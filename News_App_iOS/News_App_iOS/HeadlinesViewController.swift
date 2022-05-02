//
//  HeadlinesViewController.swift
//  News_App_iOS
//
//  Created by student on 4/6/22.
//

import UIKit

class HeadlinesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = headlinesTableView.dequeueReusableCell(withIdentifier: "HeadlinesCell", for: indexPath) as! HeadlinesTableViewCell
        
        let _news = news[indexPath.row]
        
        cell.headlinesImage.image = _news.image
        
        cell.selectionStyle = .none
        
        cell.headlineText.text = _news.Headline

        cell.headlineText.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.footnote)
        
        return cell
    }


    @IBOutlet weak var headlinesTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        headlinesTableView.delegate = self
        headlinesTableView.dataSource = self

        headlinesTableView.rowHeight = UITableView.automaticDimension

        headlinesTableView.estimatedRowHeight = 50
        
        NotificationCenter.default.addObserver(forName: UIContentSizeCategory.didChangeNotification, object: .none, queue: OperationQueue.main) { [weak self] _ in
          self?.headlinesTableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "DetailSegue"{
            let destination = segue.destination as!  NewsDescriptionViewController
            
            //Assigning product to the destination
            destination.newsItem = news[(headlinesTableView.indexPathForSelectedRow?.row)!]
        }
    }

}
