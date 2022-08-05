//
//  storeMatcherViewController.swift
//  finalProject
//
//  Created by scholar on 8/4/22.
//

import UIKit

class storeMatcherViewController: UIViewController {

    var ratingChoice = 0
    var typeChoice = ""
    var middlePrice = [
                        "Tops" : [["None"], ["CHNGE"]],
                       "Bottoms" : [[ "None"] , ["LA Relaxed", "Harvest and Mill", "Etica", "Boyish", "unspun", "Two Days Off"]],
                       "Dresses" : [["Reformation"], ["LA Relaxed", "Etica", "Eclipse", "Fair Indigo", "TAMGA Designs", "Boyish", "Left Edit"]],
                       "Accessories" : [["None"] , ["Nube", "Tonle", "Two Days Off", "The Good Tee", "TAMGA Designs"]]
                        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        print(middlePrice["Bottoms"]![1][1])
        print(middlePrice["Accessories"]![1])
        
        // Do any additional setup after loading the view.
    }

    @IBAction func oneDollar(_ sender: Any) {
    }
    @IBAction func twoDollar(_ sender: Any) {
    }
    
    @IBAction func threeDollar(_ sender: Any) {
    }
    
    
    
    
    
    
    @IBAction func topsButton(_ sender: Any) {
        typeChoice = "Tops"
    }
    
    @IBAction func bottomsChoice(_ sender: Any) {
        typeChoice = "Bottoms"
    }
    
    @IBAction func dressesButton(_ sender: Any) {
        typeChoice = "Dresses"
    }
    
    @IBAction func accessoriesButton(_ sender: Any) {
        typeChoice = "Accessories"
    }
    
    

    
    @IBAction func goodButton(_ sender: Any) {
        ratingChoice = 0
    }
    
    @IBAction func greatButton(_ sender: Any) {
        ratingChoice = 1
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToResults"{
            let destinationVC = segue.destination as? ResultsViewController
            destinationVC?.storesChosen = middlePrice[typeChoice]![ratingChoice]
        }
    }
    
    
    @IBAction func submitAnswersButton(_ sender: Any) {
        performSegue(withIdentifier: "moveToResults", sender: self)
    }
    
}



