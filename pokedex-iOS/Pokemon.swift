//
//  Pokemon.swift
//  pokedex-iOS
//
//  Created by Nazmul Hasan on 8/26/16.
//  Copyright © 2016 AZNAZ.com. All rights reserved.
//

import Foundation

class Pokemon{
    private var _name:String!
    private var _pokedexId:Int!
    
    var Name:String{
        return _name;
    }
    var PokedexId:Int{
        return _pokedexId;
    }
    init(pokemon:String,pokedexId:Int){
        _name=pokemon
        _pokedexId=pokedexId
    }
    
}