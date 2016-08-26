//
//  Pokemon.swift
//  pokedex-iOS
//
//  Created by Nazmul Hasan on 8/26/16.
//  Copyright © 2016 AZNAZ.com. All rights reserved.
//

import Foundation

class Pokemon{
    private var _pokemon:String!
    private var _pokedexId:Int!
    
    var Pokemon:String{
        return _pokemon;
    }
    var PokedexId:Int{
        return _pokedexId;
    }
    init(pokemon:String,pokedexId:Int){
        _pokemon=pokemon
        _pokedexId=pokedexId
    }
    
}