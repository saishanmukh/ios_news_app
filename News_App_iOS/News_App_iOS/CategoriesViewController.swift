//
//  CategoriesViewController.swift
//  News_App_iOS
//
//  Created by student on 4/6/22.
//

import UIKit

class CategoriesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = categoryCollectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCollectionViewCell
        
        cell.categoryNameOutlet.text = categories[0]
        return cell
    }
    
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var headlines: UITableView!
    

    let categories = ["Sports","Crime","Technology","Weather"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
    }
    

}
