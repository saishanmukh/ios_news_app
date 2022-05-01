//
//  ArtistViewController.swift
//  News_App_iOS
//
//  Created by student on 4/30/22.
//

import UIKit

class ArtistViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let artists = Artist.artistsFromBundle()
    lazy var selectedArtist = artists[0]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedArtist.works.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! WorkTableViewCell
        
        let work = selectedArtist.works[indexPath.row]
        
        cell.imageOutlet.image = work.image
        
        cell.selectionStyle = .none
        
        cell.wrokInfoOutlet.text = work.info

        cell.wrokInfoOutlet.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.footnote)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableViewOutlet.cellForRow(at: indexPath) as? WorkTableViewCell else {
          return
        }
        var work = selectedArtist.works[indexPath.row]
        selectedArtist.works[indexPath.row] = work
        
        cell.wrokInfoOutlet.text = work.info
        cell.wrokInfoOutlet.textAlignment = .left
        
        tableViewOutlet.beginUpdates()
        tableViewOutlet.endUpdates()
        
        tableViewOutlet.scrollToRow(at: indexPath, at: .top, animated: true)
    }
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        tableViewOutlet.rowHeight = UITableView.automaticDimension
        tableViewOutlet.translatesAutoresizingMaskIntoConstraints = false
        tableViewOutlet.estimatedRowHeight = 300
        
        NotificationCenter.default.addObserver(forName: UIContentSizeCategory.didChangeNotification, object: .none, queue: OperationQueue.main) { [weak self] _ in
          self?.tableViewOutlet.reloadData()

        // Do any additional setup after loading the view.
    }
}
    
}
