//
//  ViewController.swift
//  Hostie
//
//  Created by student on 2021-01-18.
//

import UIKit

class ViewController: UICollectionViewController {
    
    let dataSource: [Package] = [
        Package(name: "Downtown Tour", description: "Downtown Tour", agent:"John Smith", price: 100.0, rate: 5, image: ""),
        Package(name: "Parliament Hill", description: "Parliament Hill", agent:"Jane Jones", price: 200.0, rate: 4, image: "")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello")
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("Hello3")
        var cell = UICollectionViewCell()
        if let packageCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? PackageViewCell {
            packageCell.configure(package: dataSource[indexPath.row])
            cell = packageCell
        } 
        print("Hello4")
        return cell
    }

}

