//
//  Data Source.swift
//  Attenance TableView
//
//  Created by Shreyash Sharma on 30/03/18.
//  Copyright © 2018 Shreyash Sharma. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    private let categories = [Category()]
    
    func getCatgories() -> [Category]
    {
        return categories
    }
    
}
