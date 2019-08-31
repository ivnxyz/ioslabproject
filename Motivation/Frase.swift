//
//  Frase.swift
//  Motivation
//
//  Created by Iván Martínez on 8/30/19.
//  Copyright © 2019 Iván Martínez. All rights reserved.
//

import Foundation

// Crear estructura para la frase
class Frase {
    let text: String
    let author: Author
    var favorita: Bool
    
    init(text: String, author: Author, favorita: Bool) {
        self.text = text
        self.author = author
        self.favorita = favorita
    }
}
