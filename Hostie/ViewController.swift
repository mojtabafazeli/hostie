//
//  ViewController.swift
//  Hostie
//
//  Created by student on 2021-01-18.
//

import UIKit

class ViewController: UICollectionViewController  {

    var dataSource: [Package] = DataProvider.dataProvider.getDescSortedData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ... other configuration ...
        
        let layout = collectionView.collectionViewLayout
        if let flowLayout = layout as? UICollectionViewFlowLayout {
            flowLayout.estimatedItemSize = CGSize(
                width: collectionView.widestCellWidth,
                // Make the height a reasonable estimate to
                // ensure the scroll bar remains smooth
                height: 200
            )
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        if let packageCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? PackageViewCell {
            packageCell.configure(package: dataSource[indexPath.row])
            cell = packageCell
        }
        cell.layer.borderWidth = Constants.borderWidth
        cell.layer.borderColor = UIColor.lightGray.cgColor
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Finished")
    }
    
}

private enum Constants {
    static let spacing: CGFloat = 16
    static let borderWidth: CGFloat = 0.5
    static let reuseID = "cell"
}

extension UICollectionView {
    var widestCellWidth: CGFloat {
        let insets = contentInset.left + contentInset.right
        return bounds.width - insets
    }
}




