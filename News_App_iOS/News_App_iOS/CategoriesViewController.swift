//
//  CategoriesViewController.swift
//  News_App_iOS
//
//  Created by student on 4/6/22.
//

import UIKit

class CategoriesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {
        
    var categoryNews = [News]()
    var categorySelected  = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count = 0
        categoryNews = [News]()
        for newsItem in news {
            if newsItem.category ==  categorySelected{
                count += 1
                categoryNews.append(newsItem)
            }
        }
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = categoryTableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as! CategoryTableViewCell
        
        let _news = categoryNews[indexPath.row]
        
        cell.categoryImage.image = _news.image
        
        cell.selectionStyle = .none
        
        cell.categoryHeadline.text = _news.Headline

        cell.categoryHeadline.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.footnote)
        
        
        return cell
    }
    
    let categories = ["Headlines", "Sports", "Technology", "Trending", "Wellness", "Dining", "Administration", "Editorial", "Events"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = categoryCollectionView.dequeueReusableCell(withReuseIdentifier: "category", for: indexPath) as! CategoryCollectionViewCell
        
        cell.categoryLabel.text = categories[indexPath.row]
        cell.categoryLabel.sizeToFit()
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        categorySelected = categories[indexPath.row]
//        print(categorySelected)
        self.categoryTableView.reloadData()
    }
    

    @IBOutlet weak var categoryTableView: UITableView!

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        
        categoryTableView.delegate = self
        categoryTableView.dataSource = self
        
        categorySelected  = "Trending"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "DetailSegue"{
            let destination = segue.destination as! NewsDescriptionViewController
            
            //Assigning product to the destination
            destination.newsItem = categoryNews[(categoryTableView.indexPathForSelectedRow?.row)!]
        }
    }
    


}
