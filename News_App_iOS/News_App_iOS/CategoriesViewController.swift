//
//  CategoriesViewController.swift
//  News_App_iOS
//
//  Created by student on 4/6/22.
//

import UIKit

class CategoriesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {
    
    let artists = Artist.artistsFromBundle()
    lazy var selectedArtist = artists[0]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedArtist.works.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = categoryTableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as! CategoryTableViewCell
        
        let work = selectedArtist.works[indexPath.row]
        
        cell.categoryImage.image = work.image
        
        cell.selectionStyle = .none
        
        cell.categoryHeadline.text = work.info

        cell.categoryHeadline.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.footnote)
        
        return cell
    }
    
    let categories = ["Headlines", "Sports", "Technology", "Trending", "Wellness", "Dining", "Administration", "Editorial", "Events"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = categoryCollectionView.dequeueReusableCell(withReuseIdentifier: "category", for: indexPath) as! CategoryCollectionViewCell
        
        cell.categoryName.text = categories[indexPath.row]

        return cell
        
        
    }
    

    @IBOutlet weak var categoryTableView: UITableView!

//    categoryButton
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        
        categoryTableView.delegate = self
        categoryTableView.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }
    


}
