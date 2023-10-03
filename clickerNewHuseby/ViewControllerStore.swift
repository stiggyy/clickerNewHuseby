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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        pointsOutlet.text = "Points: \(points)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
