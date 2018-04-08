//
//  FirstViewController.swift
//  Basketball
//
//  Created by McKinney family  on 3/23/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UIScrollViewDelegate {
   
    
    
    
    
    @IBOutlet weak var pPositionCollectionView: UICollectionView!
    
    let playersPositions: [String] = ["basketball", "center", "Kobe", "pointguard", "pointguard", "Kobe"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pPositionCollectionView.delegate = self
        pPositionCollectionView.dataSource = self
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
     
        
     return playersPositions.count
        
    }
    
    
    
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    @available(iOS 6.0, *)
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "User Cell", for: indexPath) as! PlayPositionCollectionViewCell
        
            cell.positionImage.image = UIImage(named: playersPositions[indexPath.row])
            cell.skillLabel.text = playersPositions[indexPath.row]
        
        
        
         return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
       print(indexPath.row)
        
   
    }
    
        
    }



