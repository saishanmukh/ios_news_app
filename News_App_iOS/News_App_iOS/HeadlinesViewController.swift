//
//  HeadlinesViewController.swift
//  News_App_iOS
//
//  Created by student on 4/6/22.
//

import UIKit

class HeadlinesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let artists = Artist.artistsFromBundle()
    lazy var selectedArtist = artists[0]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedArtist.works.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = headlinesTableView.dequeueReusableCell(withIdentifier: "HeadlinesCell", for: indexPath) as! HeadlinesTableViewCell
        
        let work = selectedArtist.works[indexPath.row]
        
        cell.headlinesImage.image = work.image
        
        cell.selectionStyle = .none
        
        cell.headlineText.text = work.info

        cell.headlineText.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.footnote)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = headlinesTableView.cellForRow(at: indexPath) as? HeadlinesTableViewCell else {
          return
        }
        var work = selectedArtist.works[indexPath.row]
        selectedArtist.works[indexPath.row] = work
        
        cell.headlineText.text = work.info
        cell.headlineText.textAlignment = .left
        
        headlinesTableView.beginUpdates()
        headlinesTableView.endUpdates()
        
        headlinesTableView.scrollToRow(at: indexPath, at: .top, animated: true)
    }

    @IBOutlet weak var headlinesTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        headlinesTableView.delegate = self
        headlinesTableView.dataSource = self
        
        headlinesTableView.rowHeight = UITableView.automaticDimension
        
        headlinesTableView.estimatedRowHeight = 300
        
        NotificationCenter.default.addObserver(forName: UIContentSizeCategory.didChangeNotification, object: .none, queue: OperationQueue.main) { [weak self] _ in
          self?.headlinesTableView.reloadData()
        }
    }

}
