//
//  HomeVC.swift
//  SRM
//
//  Created by Deepansh Saini on 18/01/19.
//  Copyright © 2019 Deepansh Saini. All rights reserved.
//

import UIKit

class HomeVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var collectionViews : UICollectionView!
    @IBOutlet weak var imagesCollectionView : UICollectionView!
    
    
    var arrayOfImage = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8")]
    
    var arrayOfImages = [UIImage(named: "abou"),UIImage(named: "application"),UIImage(named: "faculty"),UIImage(named: "locate"),UIImage(named: "campuslife"),UIImage(named: "fees"),UIImage(named: "gallery"),UIImage(named: "news"),UIImage(named: "abou"),UIImage(named: "application"),UIImage(named: "faculty"),UIImage(named: "locate"),UIImage(named: "campuslife"),UIImage(named: "fees"),UIImage(named: "gallery"),UIImage(named: "news")]
    var arrayofIDS = ["About","Admission","Courses","Locate","Campus Life","Fees","Gallery","News","About","Admission","Courses","Locate","Campus Life","Fees","Gallery","News"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collectionViews.delegate = self
        collectionViews.dataSource = self
        imagesCollectionView.delegate = self
        imagesCollectionView.dataSource = self
       
        
        let width = (view.frame.size.width - 20) / 5
        let layout = collectionViews.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionViews{
            return arrayOfImages.count
        }else if collectionView == self.imagesCollectionView{
            return arrayOfImage.count
        }else{return 1}
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionViews{
            let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)as? HomeIconsCollectionViewCell
            cellA?.imageVIew.image = arrayOfImages[indexPath.row]
            cellA?.titleLabel.text = arrayofIDS[indexPath.row]
            return cellA!
        }else if collectionView == self.imagesCollectionView{
            let cellB = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)as? MainImagesCollectionViewCell
            cellB?.imageView.image = arrayOfImage[indexPath.row]
            cellB?.imageView.layer.cornerRadius = 6
            cellB?.imageView.layer.masksToBounds = true
            
            
            return cellB!
        }else{ return UICollectionViewCell() }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let name = arrayofIDS[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: name)
        self.navigationController?.pushViewController(viewController! , animated: true)
    }

}
