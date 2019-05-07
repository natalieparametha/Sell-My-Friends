//
//  ourServiceViewController.swift
//  CV
//
//  Created by Natalie Parametha on 26/04/19.
//  Copyright © 2019 Natalie Parametha. All rights reserved.
//

import UIKit

class ourServiceViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var service: UITableView!
    
    let services = ["Our Service", "Our Aaaaa"]
    
    let servicess = ["aaa", "bbb"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        service.delegate = self
        service.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return services.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = service.dequeueReusableCell(withIdentifier: "Services", for: indexPath) as! servicesTableViewCell
        
        cell.servicesLabel?.text = services[indexPath.item]
        //cell.servicesImage?.image = serviceImage[indexPath.item]
        
        return cell
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
