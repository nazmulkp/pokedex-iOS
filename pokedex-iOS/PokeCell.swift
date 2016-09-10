//
//  PokeCell.swift
//  pokedex-iOS
//
//  Created by  Nazmul Hasan on 8/27/16.
//  Copyright © 2016 AZNAZ.com. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    @IBOutlet weak var  thumbImg:UIImageView!
    @IBOutlet weak var  nameLbl:UILabel!
    
    var pokemon : Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius=5.0
    }
    
    
    func configration(pokemon:Pokemon){
        self.pokemon=pokemon
        thumbImg.image=UIImage(named: "\(pokemon.PokedexId)");
        nameLbl.text=pokemon.PokeName.capitalizedString;
    }
}
