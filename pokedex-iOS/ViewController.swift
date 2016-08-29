//
//  ViewController.swift
//  pokedex-iOS
//
//  Created by Nazmul Hasan on 8/26/16.
//  Copyright © 2016 AZNAZ.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var colletion:UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        colletion.delegate=self;
        colletion.dataSource=self;
        parsePokemonCSV();
    }
     func parsePokemonCSV(){
        let path=NSBundle.mainBundle().pathForResource("pokemon", ofType: "csv");
        
        do{
            let contentCSV = try CSV(contentsOfURL: path!);
            var row = contentCSV.rows;
            
            print(row);
            
        
        }catch let err as NSError{
            print(err.debugDescription)
        }
      }
   
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        if let cell=collectionView.dequeueReusableCellWithReuseIdentifier("PokeCell",
               forIndexPath: indexPath) as? PokeCell{
            let pokeman=Pokemon(pokemon: "Text", pokedexId: indexPath.row);
            cell.configration(pokeman);
            
            return cell;
        }
        else{
            return UICollectionViewCell();
        }
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 778;
    }
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1;
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(105, 105)
    }
}

