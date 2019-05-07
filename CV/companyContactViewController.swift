//
//  companyContactViewController.swift
//  CV
//
//  Created by Natalie Parametha on 26/04/19.
//  Copyright © 2019 Natalie Parametha. All rights reserved.
//

import UIKit

class companyContactViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
 
    @IBOutlet weak var companyContactTableView: UITableView!
    
    let contact = ["Surabaya Office", "Inquiry", "Website", "Customer Support", "Hotline"]
    
    let contacts = ["Jalan Greges Jaya II No. 2F", "aditia.sprajitno@hacaca.com", "www.hacacagroup.com", "031-7491335", "031-7483510"]
    
    let contactImage: [UIImage] = [
    
        UIImage(named: "OIcon")!,
        UIImage(named: "EIcon")!,
        UIImage(named: "WIcon")!,
        UIImage(named: "TIcon")!,
        UIImage(named: "CIcon")!,

    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        companyContactTableView.delegate = self
        companyContactTableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = companyContactTableView.dequeueReusableCell(withIdentifier: "aboutUs", for: indexPath) as! companyContactTableViewCell
        
         //cell.servicesTitleLabel?.text = service[indexPath.item]
        cell.contactTitle?.text = contact[indexPath.item]
        cell.contactIsi?.text = contacts[indexPath.item]
        cell.contactIcon?.image = contactImage[indexPath.item]
        
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
