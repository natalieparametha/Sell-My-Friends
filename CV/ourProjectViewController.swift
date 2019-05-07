//
//  ourProjectViewController.swift
//  CV
//
//  Created by Natalie Parametha on 25/04/19.
//  Copyright © 2019 Natalie Parametha. All rights reserved.
//

import UIKit

class ourProjectViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    let project = ["The Fleets", "The Goods", "The Ships", "Wing Box", "Heavy Equipment", "Oil Rig"]
    
    let projects = ["Our fleets ready to carry over your goods.", "Our Company can carry over your goods with any transport we provided.", "Our sea fleets are ready to carry your common goods or heavy goods.", "Our convenient fleets can carry over the goods with wing box truck.", "We could also transport vehicles and all kind of heavy equipment.", "Our fleets ready to carry oil rig."]
    
    let projectImages: [UIImage] = [
    
        UIImage(named: "Fleets")!,
        UIImage(named: "theGoods")!,
        UIImage(named: "ourShips")!,
        UIImage(named: "wingBoxTruck")!,
        UIImage(named: "heavyEquipment")!,
        UIImage(named: "oilRig")!,
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsets (top: 0,left: 5,bottom: 0,right: 5)
        layout.minimumInteritemSpacing = 5
        layout.itemSize = CGSize(width: (self.collectionView.frame.size.width - 20)/2, height: self.collectionView.frame.size.height/2.60)
        

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return project.count
    
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Collection", for: indexPath) as! CollectionViewCell
        
        cell.projectTitle.text = project[indexPath.item]
        cell.projectLabel.text = projects[indexPath.item]
        cell.projectImageView.image = projectImages[indexPath.item]
        //cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.backgroundColor = UIColor.white.cgColor
        cell.layer.borderWidth = 0
        
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        //cell?.layer.borderColor = UIColor.gray.cgColor
        cell?.layer.backgroundColor = #colorLiteral(red: 0.8509148955, green: 0.8510174751, blue: 0.8508799672, alpha: 1)
        cell?.layer.borderWidth = 1
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        //cell?.layer.borderColor = UIColor.lightGray.cgColor
        cell?.layer.backgroundColor = UIColor.white.cgColor
        cell?.layer.borderWidth = 0.5
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
