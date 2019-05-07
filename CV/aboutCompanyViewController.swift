//
//  aboutCompanyViewController.swift
//  CV
//
//  Created by Natalie Parametha on 26/04/19.
//  Copyright © 2019 Natalie Parametha. All rights reserved.
//

import UIKit

class aboutCompanyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var aboutUs: UITableView!
    
    let contactName = ["Office", "Customer Support", "Hotline", "Inquiry", "Wesbite"]
    
    let contact = ["Jalan Greges Jaya II No. 2F, Surabaya", "031-7483510", "031-7491335", "aditia.sprajitno@hacaca.com", "www.hacacagroup.com"]
    
    let contactIcon: [UIImage] = [
        UIImage(named: "oilRig")!,
        UIImage(named: "oilRig")!,
        UIImage(named: "oilRig")!,
        UIImage(named: "oilRig")!,
        UIImage(named: "oilRig")!,
    
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutUs.delegate = self
        aboutUs.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = aboutUs.dequeueReusableCell(withIdentifier: "AboutUs", for: indexPath) as! contactUsTableViewCell
        
        cell.contactImage?.image = contactIcon[indexPath.item]
        cell.Keterangan?.text = contact[indexPath.item]
        cell.isiContact?.text = contactName[indexPath.item]
        
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
