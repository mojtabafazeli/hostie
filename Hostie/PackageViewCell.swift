//
//  PackageViewCell.swift
//  Hostie
//
//  Created by student on 2021-02-12.
//

import UIKit

class PackageViewCell: UICollectionViewCell {
    
    @IBOutlet var name: UILabel!
    @IBOutlet var descript: UITextView!
    @IBOutlet var agent: UILabel!
    @IBOutlet var price: UILabel!
    @IBOutlet var rate: UILabel!
    @IBOutlet var image: UIImageView!
    
    func configure(package: Package) {
        name.text = package.name
        descript.text = package.description
        agent.text = package.agent
        price.text = String(format: "%.2f", package.price)
        rate.text = String(format: "%f" , package.rate)

    }
}
