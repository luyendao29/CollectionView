//
//  CollectionViewController.swift
//  demoCollectionview
//
//  Created by Đặng Khánh  on 5/20/19.
//  Copyright © 2019 Khánh Trắng. All rights reserved.
//

import UIKit



class CollectionViewController: UICollectionViewController {
    // lay chieu rong cua man hinh
    let WIDTH_SCREEN = UIScreen.main.bounds.width
    // so item
    let numberOfItems: CGFloat = 4
    // khoang cach giua cac item
    let padding: CGFloat = 1
    
    var numbers = [Int](1...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return numbers.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! demoCollectionViewCell
        cell.labeldemo.text = String(numbers[indexPath.row])
    
        
    
        return cell
    }

    

}
extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    
    
//    let WIDTH_SCREEN = UIScreen.main.bounds.width
//    // so item
//    let numberOfItems: CGFloat = 4
//    // khoang cach giua cac item
//    let padding: CGFloat = 1
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemSize = (WIDTH_SCREEN - padding * 2 - padding * (numberOfItems - 1)) / numberOfItems
        return CGSize(width: itemSize, height: itemSize)
    }
    
    // Spacing Between Each Edge Of Section
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: padding, left: 0, bottom: padding, right: 0)
    }
    
    // Spacing Between Rows Of Section
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return padding
    }
    
    //    Spacing Between Colums Of Section
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return padding
    }
}

