//
//  dataProvider.swift
//  Hostie
//
//  Created by student on 2021-02-25.
//

import UIKit

struct DataProvider {

    static let dataProvider = DataProvider()
    
    private let dataSource: [Package] = [
        Package(name: "Downtown Tour", description: "Downtown Tour", agent:"John Smith", price: 100.0, rate: 3, image: UIImage(named: "downtown")),
        Package(name: "Parliament Hill", description: "Parliament Hill", agent:"Jane Jones", price: 200.0, rate: 5, image: UIImage(named: "parliament")),
        Package(name: "Garage Sale", description: "Garage Sale", agent:"John Smith", price: 50.0, rate: 2, image: UIImage(named: "downtown")),
        Package(name: "Rideau Center Shopping", description: "Rideau Center Shopping", agent:"John Smith", price: 160.0, rate: 4, image: UIImage(named: "downtown")),
        Package(name: "Snowshoeing", description: "Snowshoeing", agent:"John Smith", price: 140.0, rate: 1, image: UIImage(named: "downtown")),
        Package(name: "Ski", description: "Ski", agent:"John Smith", price: 400.0, rate: 5, image: UIImage(named: "downtown")),
    ]
    
    func getData() -> [Package] {
        return dataSource
    }
    
    func getDescSortedData() -> [Package] {
        return bubbleSortDesc(list: dataSource)
    }
    
    func bubbleSortDesc(list: [Package]) -> [Package] {
        guard list.count > 1 else {
                return list
        }
            
        var output: [Package] = list
        
        for primaryindex in 0..<output.count {
            
            let key = output[primaryindex]
            var secondaryindex = primaryindex
            
            while secondaryindex > -1 {
                if key.rate > output[secondaryindex].rate {
                    
                    output.remove(at: secondaryindex + 1)
                    output.insert(key, at: secondaryindex)
                }
                
                secondaryindex -= 1
            }
        }
                
        return output
    }
    
    private init() {}
    
}
