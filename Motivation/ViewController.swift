//
//  ViewController.swift
//  Motivation
//
//  Created by Iván Martínez on 8/29/19.
//  Copyright © 2019 Iván Martínez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Definir labels
    @IBOutlet weak var fraseLabel: UILabel!
    @IBOutlet weak var autorLabel: UILabel!
    @IBOutlet weak var boton: UIButton!
    @IBOutlet weak var starButton: UIButton!
    
    var currentPhrase: Frase!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mostrarNuevaFrase(boton)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if currentPhrase.favorita {
            starButton.setImage(UIImage(named: "filled_star"), for: .normal)
        } else {
            starButton.setImage(UIImage(named: "star"), for: .normal)
        }
    }
    
    // Generar una nueva frase
    @IBAction func mostrarNuevaFrase(_ sender: UIButton) {
        let frase = getRandomPhrase()
        currentPhrase = frase
        fraseLabel.text = frase.text
        autorLabel.text = "- \(frase.author.name)"
        
        let color = getRandomColor()
        view.backgroundColor = color
        boton.setTitleColor(color, for: .normal)
        
        if frase.favorita {
            starButton.setImage(UIImage(named: "filled_star"), for: .normal)
        } else {
            starButton.setImage(UIImage(named: "star"), for: .normal)
        }
    }
    
    func getRandomPhrase() -> Frase {
        return frases.randomElement()!
    }
    
    func getRandomColor() -> UIColor {
        return colores.randomElement()!.obtenerColorBonito()
    }
    
    @IBAction func marcarComoFavorita(_ sender: UIButton) {
        currentPhrase.favorita = !currentPhrase.favorita
        
        if currentPhrase.favorita {
            starButton.setImage(UIImage(named: "filled_star"), for: .normal)
        } else {
            starButton.setImage(UIImage(named: "star"), for: .normal)
        }
    }
    
    // Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailsViewController {
            destination.author = currentPhrase.author
        }
    }
    
}

