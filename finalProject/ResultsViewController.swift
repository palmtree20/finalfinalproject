//
//  ResultsViewController.swift
//  finalProject
//
//  Created by scholar on 8/4/22.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var chosenStoresLabel: UILabel!
    
    var storesChosen : [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var allStores = ""
        for store in storesChosen{
            allStores.append("\(store) \n \n")
        }
        
        chosenStoresLabel.text = allStores

    }
}
