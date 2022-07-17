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
       
        ref.child(Oneinstance().olearysEntre).child(Oneinstance()
            .tables).child(table.number).setValue(table.number)
        
        ref.child(Oneinstance().olearysEntre).child(Oneinstance()
            .tables).child(table.number).child(Oneinstance().guests)
            .child(table.guests[0].number).child("orders").setValue(table.guests[1].types[0].name)
        
        
    }
    
    
}
