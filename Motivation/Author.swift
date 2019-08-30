//
//  Author.swift
//  Motivation
//
//  Created by Iván Martínez on 8/30/19.
//  Copyright © 2019 Iván Martínez. All rights reserved.
//

import Foundation

class Author {
    let name: String
    let imagesNames: [String]
    
    init(name: String, imagesNames: [String]) {
        self.name = name
        self.imagesNames = imagesNames
    }
}
