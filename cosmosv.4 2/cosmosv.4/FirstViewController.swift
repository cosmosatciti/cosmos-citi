//
//  FirstViewController.swift
//  cosmosv.4
//
//  Created by vaishnavi kothavasal srinivasa on 10/25/18.
//  Copyright © 2018 ICG. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionEvents: UICollectionView!

    let events = ["Mark Mason, Chief Financial Officer for Citi's Institutional Clients Group, and CEO Mike Corbat visited Howard University yesterday for a fireside chat focused on their careers at Citi, how tech and digitization are continuing to impact financial services, and their thinking around diversity and decision making.", "Women's Bond Club of NY for a panel discussion on the state of the global economy, political outlook, market outlook and trends, and changes to the...", "E3 Graduate Batch for ICG"]
    
    
    
    let eventsImages: [UIImage] = [ UIImage(named: "CitiVentures")! , UIImage(named:"WomensBondClub")!, UIImage(named: "ICGE3")! ]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        collectionEvents.dataSource = self
        
        collectionEvents.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return events.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.MyLabel.text = events[indexPath.item]
        
        cell.MyImage.image = eventsImages[indexPath.item]
        
        return cell
        
        
        
    }

}

