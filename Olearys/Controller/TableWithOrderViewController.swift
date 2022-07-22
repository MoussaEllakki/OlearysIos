//
//  TableWithOrderViewController.swift
//  Olearys
//
//  Created by Moussa El Lakki on 2022-07-22.
//

import UIKit


    class TableWithOrderViewController: UIViewController , UICollectionViewDataSource , UICollectionViewDelegate{

        
        @IBOutlet weak var attGoraCollectionView: UICollectionView!
        let observeDataInfireBase = ObserveDataInfireBase()
        
        
        override func viewDidLoad() {
            super.viewDidLoad()

            
            attGoraCollectionView.dataSource = self
            attGoraCollectionView.delegate = self
        
             observeDataInfireBase.getTablesWhichHaveOrder { [self] in
                
                 attGoraCollectionView.reloadData()
            }
      
        }
        
        
        
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
            return observeDataInfireBase.tableshaveOrders.count
        }
        
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "attGoraCell", for: indexPath) as! AttGoraCollectionViewCell
            
            let tableImage  = UIImage(named: "imgred")!
            
            let tableNumber = observeDataInfireBase.tableshaveOrders[indexPath.row].number
            cell.setUpTalesContent(tableNumber: tableNumber , tableImage: tableImage)
            return cell
         }
        
        
       
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
           
            let segueToTakeOrderView = performSegue(withIdentifier: "toKitchen", sender: "aaa")
            
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width:self.view.frame.width * 0.2 , height: self.view.frame.height * 0.1)
        }
        
        
     

    }



