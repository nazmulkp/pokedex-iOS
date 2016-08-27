//
//  PokeCell.swift
//  pokedex-iOS
//
//  Created by Azmal Hossain on 8/27/16.
//  Copyright © 2016 AZNAZ.com. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    @IBOutlet weak var  thumbImg:UIImageView!
    @IBOutlet weak var  nameLbl:UILabel!
    
    var pokemon : Pokemon!
    
    func configration(pokemon:Pokemon){
        self.pokemon=pokemon
        thumbImg.image=UIImage(named: "\(pokemon.PokedexId)");
        nameLbl.text=pokemon.Name.capitalizedString;
    }
}
