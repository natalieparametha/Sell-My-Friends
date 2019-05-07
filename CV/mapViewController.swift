//
//  mapViewController.swift
//  CV
//
//  Created by Natalie Parametha on 23/04/19.
//  Copyright © 2019 Natalie Parametha. All rights reserved.
//

import UIKit

class mapViewController: UIViewController {

    @IBOutlet weak var truckLeft: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func aboutButton(_ sender: Any) {
    /*    UIView.animate(withDuration: 0.5, animations:
            { self.truckLeft.frame.origin.y -= 20
                self.truckLeft.frame.origin.x -= 50
        }, completion: nil) */
        
        UIView.animate(withDuration: 1.5, animations: {
            self.truckLeft.frame.origin.y -= 130
            self.truckLeft.frame.origin.x -= 220
        }) { (animate) in
            self.performSegue(withIdentifier: "aboutUs", sender: self)
            
        }
        
        
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
