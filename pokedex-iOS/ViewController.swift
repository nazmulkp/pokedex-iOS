//
//  ViewController.swift
//  pokedex-iOS
//
//  Created by Nazmul Hasan on 8/26/16.
//  Copyright © 2016 AZNAZ.com. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var colletion:UICollectionView!
    
    var pokemonlist=[Pokemon]();
    var mushicPlayer:AVAudioPlayer!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        colletion.delegate=self;
        colletion.dataSource=self;
        parsePokemonCSV();
        initSound();
    }
    
     func parsePokemonCSV(){
        let path=NSBundle.mainBundle().pathForResource("pokemon", ofType: "csv");
        
        do{
            let contentCSV = try CSV(contentsOfURL: path!);
            let rows = contentCSV.rows;
            for row in rows{
               //print(row)
                let id=Int(row["id"]!)
                let identifier=row["identifier"]!
                let pokemon=Pokemon(pokemon: identifier, pokedexId: id!)
                pokemonlist.append(pokemon)
//                print(identifier);
            }
            //print(rows);
            
        
        }catch let err as NSError{
            print(err.debugDescription)
        }
      }
    func initSound(){
        
        let path=NSBundle.mainBundle().pathForResource("music", ofType: "mp3")!
        
        do{
           mushicPlayer=try AVAudioPlayer(contentsOfURL: NSURL(string: path)!)
            mushicPlayer.prepareToPlay()
            mushicPlayer.numberOfLoops = -1
            mushicPlayer.play()
        }
        catch let err as NSError{
            print(err.debugDescription);
        }
        
        
    }
    
    @IBAction func musicBtn(sender: UIButton!) {
        
        if(mushicPlayer.playing){
            mushicPlayer.stop();
            sender.alpha=0.6
        }
        else{
            mushicPlayer.play();
            sender.alpha=1.0
        }
        
    }
   
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        if let cell=collectionView.dequeueReusableCellWithReuseIdentifier("PokeCell",
               forIndexPath: indexPath) as? PokeCell{
            
           let pokemon=pokemonlist[indexPath.row]
            
            cell.configration(pokemon);
            
            return cell;
        }
        else{
            return UICollectionViewCell();
        }
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 278;
    }
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1;
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(105, 105)
    }
}

