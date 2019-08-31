//
//  FavoritesViewController.swift
//  Motivation
//
//  Created by Iván Martínez on 8/30/19.
//  Copyright © 2019 Iván Martínez. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, FavoriteValueChangedProtocol {

    @IBOutlet weak var tableView: UITableView!
    
    var frasesFavoritas = [Frase]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        frasesFavoritas = frases.filter({ (frase) -> Bool in
            return frase.favorita
        })

        tableView.reloadData()
    }
    
    // UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return frasesFavoritas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteTableViewCell", for: indexPath) as! FavoriteTableViewCell
        
        let frase = frasesFavoritas[indexPath.row]
        
        cell.configure(with: frase, index: indexPath.row, favoriteValueChangedDelegate: self)
        
        return cell
    }
    
    // UITableViewDelegate
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func favoriteValueChanged(index: Int, favorite: Bool) {
        frasesFavoritas[index].favorita = favorite
        
        frasesFavoritas = frases.filter({ (frase) -> Bool in
            return frase.favorita
        })
        
        tableView.reloadData()
    }

}
