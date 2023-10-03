//
//  ViewController.swift
//  clickerNewHuseby
//
//  Created by CATHERINE HUSEBY on 10/3/23.
//

import UIKit

class ViewController: UIViewController {
    

    var points: Int = 0
    
    var hasCupcake: Bool = false
    var hasCider: Bool = false
    var hasFrog: Bool = false
    
    var hasBoost: Bool = false
    var boostAmt: Int = 1
    
    var cupcakeAmt: Int = 0
    var ciderAmt: Int = 0
    var frogAmt: Int = 0
    
    
    @IBOutlet weak var boostLabelOutlet: UILabel!
    
    @IBOutlet weak var cupcakeImageOutlet: UIImageView!
    @IBOutlet weak var ciderImageOutlet: UIImageView!
    @IBOutlet weak var frogImageOutlet: UIImageView!
    
    @IBOutlet weak var cupcakeLabelOutlet: UILabel!
    @IBOutlet weak var ciderLabelOutlet: UILabel!
    @IBOutlet weak var frogLabelOutlet: UILabel!
    
    @IBOutlet weak var pointOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        pointOutlet.text = "Points: \(points)"
        if hasCupcake {
            cupcakeImageOutlet.image = UIImage(named: "cake")
            cupcakeLabelOutlet.text = "cupcakes: \(cupcakeAmt)"
        }
        if hasCider { ciderImageOutlet.image = UIImage(named: "cider")
            ciderLabelOutlet.text = "ciders: \(ciderAmt)"
        }
        if hasFrog {
            frogImageOutlet.image = UIImage(named: "frog")
            frogLabelOutlet.text = "frogs: \(frogAmt)"
        }
        if hasBoost {
            boostLabelOutlet.text = "(\(boostAmt)x boost)"
        }
    }
    
    @IBAction func addPoints(_ sender: Any) {
        
        points = points + boostAmt
        
        pointOutlet.text = "Points: \(points)"
    }
    
    
    @IBAction func goToStoreAction(_ sender: Any) {
        performSegue(withIdentifier: "toStore", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //nvc = next view controller
        //HAS ACCESS TO ALL VARIABLES IN THE NEXT CONTROLLER
        let nvc = segue.destination as! ViewControllerStore
        
        nvc.points = points
        
        //making delgate a reference
       nvc.delegate = self
    }
    


}

