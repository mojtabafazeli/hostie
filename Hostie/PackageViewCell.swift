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
        rate.text = String(package.rate)
        image.image = package.image
    }
    
    
    
    override func systemLayoutSizeFitting(
            _ targetSize: CGSize,
            withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority,
            verticalFittingPriority: UILayoutPriority) -> CGSize {
            
            // Replace the height in the target size to
            // allow the cell to flexibly compute its height
            var targetSize = targetSize
            targetSize.height = CGFloat.greatestFiniteMagnitude
            
            // The .required horizontal fitting priority means
            // the desired cell width (targetSize.width) will be
            // preserved. However, the vertical fitting priority is
            // .fittingSizeLevel meaning the cell will find the
            // height that best fits the content
            let size = super.systemLayoutSizeFitting(
                targetSize,
                withHorizontalFittingPriority: .required,
                verticalFittingPriority: .fittingSizeLevel
            )
            
            return size
        }
}
