//
//  FavoriteTableViewCell.swift
//  Motivation
//
//  Created by Iván Martínez on 8/30/19.
//  Copyright © 2019 Iván Martínez. All rights reserved.
//

import UIKit

class FavoriteTableViewCell: UITableViewCell {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var favoriteSwitch: UISwitch!
    
    var index: Int!
    var favoriteValueChangedDelegate: FavoriteValueChangedProtocol!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with frase: Frase, index: Int, favoriteValueChangedDelegate: FavoriteValueChangedProtocol) {
        self.index = index
        self.favoriteValueChangedDelegate = favoriteValueChangedDelegate
        
        textView.text = frase.text
        authorLabel.text = frase.author.name
        favoriteSwitch.setOn(frase.favorita, animated: true)
    }
    
    @IBAction func favoriteValueChanged(_ sender: UISwitch) {
        favoriteValueChangedDelegate.favoriteValueChanged(index: index, favorite: sender.isOn)
    }
    
}
