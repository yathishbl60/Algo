//
//  ViewController.swift
//  Algo
//
//  Created by Yatheesha on 25/12/2561 BE.
//  Copyright © 2561 Yatheesha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hash = [1, 4, 5, 67].indexedDictionary
        print(hash)
    }
    
    func indexesByTwoPassHashTable(elements: [Int], sum: Int) -> Indexes? {
        var hash: [Int: Int] = [:]
        for (index, element) in elements.enumerated() {
            if let first = hash[element] {
                return Indexes(first: first, second: index)
            } else {
                hash[sum - element] = index
            }
        }
        
        return nil
    }
    
}


extension Collection  {
    var indexedDictionary: [Int: Element] {
        return enumerated().reduce(into: [:]) { $0[$1.offset] = $1.element }
    }
}

extension ViewController {
    
    struct Indexes: CustomStringConvertible {
        let first: Int
        let second: Int
        
        var description: String {
            return "(\(first), \(second))"
        }
    }
    
    
}
