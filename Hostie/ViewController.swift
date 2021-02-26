//
//  ViewController.swift
//  Hostie
//
//  Created by student on 2021-01-18.
//

import UIKit

class ViewController: UICollectionViewController  {

    var dataSource: [Package] = DataProvider.dataProvider.getDescSortedData()
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        if let packageCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? PackageViewCell {
            packageCell.configure(package: dataSource[indexPath.row])
            cell = packageCell
        }
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Finished")
    }
    
}




