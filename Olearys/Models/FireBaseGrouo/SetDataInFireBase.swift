//
//  SetDataInFireBase.swift
//  Olearys
//
//  Created by Moussa El Lakki on 2022-06-27.
//

import Foundation
import Firebase

class SetDataInFireBase {
    
    var ref :  DatabaseReference!
    
    init(){
        ref = Database.database().reference()
    }
    
    
  
    func sendOrderToFireBase(table : Table){
       
        ref.child(FBChild().olearysEntre).child(FBChild()
            .tables).child(table.number).setValue(table.number)
        
        ref.child(FBChild().olearysEntre).child(FBChild()
            .tables).child(table.number).child(FBChild().guests)
            .child(table.guests[0].number).child("orders").setValue(table.guests[1].types[0].name)
        
        
    }
    
    
}
