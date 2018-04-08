//
//  FirstViewController.swift
//  Basketball
//
//  Created by McKinney family  on 3/23/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UIScrollViewDelegate, UITableViewDelegate, UITableViewDataSource {
  
   
    
    
    
    
    @IBOutlet weak var pPositionCollectionView: UICollectionView!
    
    let playersPositions: [String] = ["basketball", "center", "Kobe", "pointguard", "pointguard", "Kobe"]
    
    let newPlayersPositions: [UIImage] = [#imageLiteral(resourceName: "pointguard"),#imageLiteral(resourceName: "pointguard"),#imageLiteral(resourceName: "pointguard"), #imageLiteral(resourceName: "pointguard"), #imageLiteral(resourceName: "Kobe"), #imageLiteral(resourceName: "Kobe"), #imageLiteral(resourceName: "Kobe"), #imageLiteral(resourceName: "center"), #imageLiteral(resourceName: "Kobe")]
    
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return playersPositions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellTwo = tableView.dequeueReusableCell(withIdentifier: "New Cell", for: indexPath)
        cellTwo.textLabel?.text = playersPositions[indexPath.row]
        
        cellTwo.imageView?.image = newPlayersPositions[indexPath.row]
        
        return cellTwo
        
    }
    
        
    }



