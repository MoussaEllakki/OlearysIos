//
//  TablesCollectionViewCell.swift
//  Olearys
//
//  Created by Moussa El Lakki on 2022-06-24.
//

import UIKit

class TablesCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var tableNumber: UILabel!
    @IBOutlet weak var tableImage: UIImageView!
    
    
    func setUpTalesContent(tableNumber : String , tableImage : UIImage){
        
        self.tableNumber.text = tableNumber
        self.tableImage.image = tableImage
        
    }
    
    
}
