//
//  PokemonDetailVC.swift
//  pokedex-iOS
//
//  Created by Azmal Hossain on 9/3/16.
//  Copyright © 2016 AZNAZ.com. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    @IBOutlet weak var displayName: UILabel!
    var pokemon:Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //displayName.text = pokemon.Name
    }
    
}
