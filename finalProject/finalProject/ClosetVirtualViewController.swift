//
//  ClosetVirtualViewController.swift
//  finalProject
//
//  Created by scholar on 8/4/22.
//

import UIKit

class ClosetVirtualViewController: UIViewController {
    
    @IBOutlet weak var PantImageView: UIImageView!
        var track = 0
        var trackPant = 0
        var trackShoe = 0
        var pant = ["Trousers", "CremePants", "JeanSkirt", "BlackPants","BrownCargos","Jeans"]
    
    @IBAction func ForwardPantButton(_ sender: Any) {
        if (trackPant == pant.count){
            trackPant = 0
        }
        PantImageView.image = UIImage(named:pant[trackPant])
        trackPant += 1
    }
    
    
    @IBAction func BackPantButton(_ sender: Any) {
        if trackPant == 0{
            trackPant = pant.count-1
        }
        else {track -= 1
        }
        PantImageView.image =  UIImage(named:pant[track])
    }
    
    @IBOutlet weak var TopImageView: UIImageView!
    var top = ["BlackLongSleeve", "CorsetTop", "TanSleeve", "GreenSleeve", "WhiteTop", "BrownLong"]
    
    @IBAction func ForwardTopButton(_ sender: Any) {
        if (track == top.count){
            track = 0
    }
        TopImageView.image = UIImage(named:top[track])
        track += 1
    }
    
    @IBAction func BackTopButton(_ sender: Any) {
        if track == 0{
            track = top.count-1
    }
        else {track -= 1
            
        }
        TopImageView.image = UIImage(named:top[track])
    }
    
    @IBOutlet weak var ShoeImageView: UIImageView!
    var shoe = ["BlueSneakers", "NewBalance", "WhiteKittenHeels", "BlackSlides","jordans","WhitePlat"]
    
    
    @IBAction func ForwardShoeButton(_ sender: Any) {
        if (trackShoe == shoe.count){
            trackShoe = 0
        }
        ShoeImageView.image =
        UIImage(named:shoe[trackShoe])
        trackShoe += 1
    }
    
    @IBAction func BackShoeButton(_ sender: Any) {
        if trackShoe == 0{
            trackShoe = top.count-1
        }
        else {trackShoe -= 1
            
        }
        ShoeImageView.image = UIImage(named:shoe[trackShoe])
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    

}
