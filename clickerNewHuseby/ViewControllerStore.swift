//
//  ViewControllerStore.swift
//  clickerNewHuseby
//
//  Created by CATHERINE HUSEBY on 10/3/23.
//

import UIKit

class ViewControllerStore: UIViewController {
    
    @IBOutlet weak var pointsOutlet: UILabel!
    var points: Int = 0
    var delegate: ViewController!
    
    @IBOutlet weak var boostLabelOutlet: UILabel!
    

    @IBOutlet weak var errorOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        pointsOutlet.text = "Points: \(points)"
        boostLabelOutlet.text = "\(delegate.boostAmt + 1)x points: 25 points"
    }
    

    @IBAction func buyCupcake(_ sender: Any) {
        
        if points >= 5 {
            
            points = points - 5
            delegate.points = points
            pointsOutlet.text = "Points: \(points)"
            delegate.hasCupcake = true
            delegate.cupcakeAmt = delegate.cupcakeAmt + 1
            
        } else {
            errorOutlet.text = "Not enough points, try again!"
            
        }
    }
    
    @IBAction func buyCider(_ sender: Any) {
        
        if points >= 10 {
            
            points = points - 10
            delegate.points = points
            pointsOutlet.text = "Points: \(points)"
            delegate.hasCider = true
            delegate.ciderAmt = delegate.ciderAmt + 1
            
        } else {
            errorOutlet.text = "Not enough points, try again!"
            
        }

    }
    
    @IBAction func buyFrog(_ sender: Any) {
        
        if points >= 15 {
            
            points = points - 15
            delegate.points = points
            pointsOutlet.text = "Points: \(points)"
            delegate.hasFrog = true
            delegate.frogAmt = delegate.frogAmt + 1
            
        } else {
            errorOutlet.text = "Not enough points, try again!"
            
        }

        
        
    }
    
    
    @IBAction func boostBuy(_ sender: Any) {
        
        if points >= 25 {
            
            points = points - 25
            delegate.points = points
            pointsOutlet.text = "Points: \(points)"
            delegate.hasBoost = true
            delegate.boostAmt = delegate.boostAmt + 1
            boostLabelOutlet.text = "\(delegate.boostAmt + 1)x points: 25 points"
            
        } else {
            errorOutlet.text = "Not enough points, try again!"
            
        }
        
    }
    
    
    
    
}
