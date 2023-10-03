//
//  ViewController.swift
//  clickerNewHuseby
//
//  Created by CATHERINE HUSEBY on 10/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    var points: Int = 0
    
    @IBOutlet weak var pointOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addPoints(_ sender: Any) {
        
        points = points + 1
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

