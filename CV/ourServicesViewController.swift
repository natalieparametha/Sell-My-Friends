//
//  ourServicesViewController.swift
//  CV
//
//  Created by Natalie Parametha on 26/04/19.
//  Copyright © 2019 Natalie Parametha. All rights reserved.
//

import UIKit

class ourServicesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var serviceTableView: UITableView!
    
    let service = ["Trucking", "Warehouse & Distribution", "Custom Clearance", "Project Handling", "Concert & Fairs", "Removal Services"]
    
    let services = ["FCL Inland Transportation. HACACA serves transportation services with 20” and 40” container trucks. We offer trucking services for breakbulk cargos, project, raw materials, chemical and general cargo to support your export import activities as well as domestic distributions.", "HACACA Logistics with DB Schenker are working together to provide the integrated service of logistics and distributions. We handle every step of your logistics process starting from customs clearance, trucking, storage, inventory control, stock keeping to safely delivering your products.", "HACACA completely understands that the smooth process of the customs credentials would have a great impact to your sustainable business. Therefore, we assure that you will be fully supported by our experienced Customs staff.", "We are the ordinary choice to handle your Extra-ordinaries. HACACA also perform extra-ordinary size and weight cargo transportation projects, including tools and equipments for construction, electric, mechanic, and even military as well as transformators and other weight lifting equipments. ", "HACACA Logistics also provide special transportation service for concerts or show equipments. Within this service, we offer our customers from pick-up process from/to airport or port-harbor to deliver the goods to the events locations and return after the concert/fair ends.", "Moving to new home sweet home or to new office? HACACA Removal Services help you to transport documents, home appliances, and office equipments to designated locations within Jabodetabek area. In addition to moving your goods, HACACA Removal Services offer you a packaging service to be included to ensure your goods to be safely transported."]
    
    let servicessImages: [UIImage] = [
        
        UIImage(named: "trucking")!,
        UIImage(named: "warehouse")!,
        UIImage(named: "customClearance")!,
        UIImage(named: "projectHandling")!,
        UIImage(named: "concertFairs")!,
        UIImage(named: "removalServices")!,
        ]
    
        override func viewDidLoad() {
        super.viewDidLoad()
        serviceTableView.delegate = self
        serviceTableView.dataSource = self
       
        
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return service.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = serviceTableView.dequeueReusableCell(withIdentifier: "Services", for: indexPath) as! servicesTableViewCell
    
        //cell.servicesTitleLabel.text = "Our Services"
        //cell.servicesLabel.text = "Services"
       // cell.servicesImage.image = UIImage(named: "oilRig")
        
        cell.servicesTitleLabel?.text = service[indexPath.item]
        cell.servicesLabel?.text = services[indexPath.item]
        cell.servicesImage?.image = servicessImages[indexPath.item]
        
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
