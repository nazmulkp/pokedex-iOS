//
//  Pokemon.swift
//  pokedex-iOS
//
//  Created by Nazmul Hasan on 8/26/16.
//  Copyright © 2016 AZNAZ.com. All rights reserved.
//

import Foundation

class Pokemon{
    private var _pokeName:String!

    private var _pokeDetial: String!
    
    private var _pokeType: String!
    
    private var _pokeHeight: String!
    
    private var _pokeWeight: String!
    
    private var _pokeDefence: String!
    
    private var _pokeDexId: Int!
    
    private var _pokeBaseAttack: String!
    
    private var _pokeNextEvolution: String!
    
    private var _pokemonUrl:String!
  
    
    var PokeName:String{
        return _pokeName;
    }
    var PokedexId:Int{
        return _pokeDexId;
    }
    init(pokeName:String,pokedexId:Int){
        _pokeName=pokeName
        _pokeDexId=pokedexId
        _pokemonUrl="\(URL_BASE)\(URL_POKEMON)\(self.PokedexId)/"
        
    }
    
}