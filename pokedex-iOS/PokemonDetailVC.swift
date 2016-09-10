//
//  PokemonDetailVC.swift
//  pokedex-iOS
//
//  Created by Azmal Hossain on 9/3/16.
//  Copyright © 2016 AZNAZ.com. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    
    @IBOutlet weak var pokeDetailImg: UIImageView!
    @IBOutlet weak var pokeDetial: UILabel!
    
    @IBOutlet weak var pokeType: UILabel!
    
    @IBOutlet weak var pokeHeight: UILabel!
    
    @IBOutlet weak var pokeWeight: UILabel!
    
    @IBOutlet weak var pokeDefence: UILabel!
    
    @IBOutlet weak var pokeDexId: UILabel!
    
    @IBOutlet weak var pokeBaseAttack: UILabel!
    
    @IBOutlet weak var pokeNextEvolution: UILabel!
    
    @IBOutlet weak var pokeCurrentEvoImg: UIImageView!
    
    @IBOutlet weak var pokeNextEvoImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //displayName.text = pokemon.Name
    }
    
    @IBAction func pokeBackToMain(sender: AnyObject) {
         dismissViewControllerAnimated(true, completion: nil)
    }
}
