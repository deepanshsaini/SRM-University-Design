//
//  AdmissionsVC.swift
//  SRM
//
//  Created by Deepansh Saini on 28/12/18.
//  Copyright © 2018 Deepansh Saini. All rights reserved.
//

import UIKit



class GalleryVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let images = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "11"),UIImage(named: "12"),UIImage(named: "13"),UIImage(named: "14")]
    override func viewDidLoad() {
        super.viewDidLoad()
        if let layout = collectionView.collectionViewLayout as? PinterestLayout {
            layout.delegate = self
        }
        
        collectionView.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
}
// Mark: - Flow Layout Delegate

extension GalleryVC: PinterestLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
        let image = images[indexPath.item]
        let height = image?.size.height
        
        return height!
    }
}


// Mark: - Data source for Collection View
extension GalleryVC:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath)as! GalleryCollectionViewCell
        let image =  images[indexPath.item]
        cell.imageView.image = image
        return cell
    }
}


