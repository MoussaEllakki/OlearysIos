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
    let wichTable : DatabaseReference!
    
    init(){
        
        ref = Database.database().reference()
        wichTable = ref.child(FBChild().olearysEntre).child(FBChild().tables)
    }
    
    
  
    func sendOrderToFireBase(table : Table){
       
       
            let tableAsDectionary : [String : Any] =
            
            [
                FBChild().hasOrder : true,
                FBChild().paid : false,
                FBChild().available : false,
                FBChild().tableSum : table.sum,
                FBChild().tableNumber : table.number,
                FBChild().done : false
            ]
            
        
         wichTable.child(table.number).setValue(tableAsDectionary)
        
        let guestsInFB =  wichTable.child(table.number).child(FBChild().guests)
        
        
        for guest in table.guests{
            
            
            guestsInFB.child(guest.number).child(FBChild().guestSum).setValue(guest.sum)
            guestsInFB.child(guest.number).child(FBChild().guestWishses).setValue(guest.guestWishes)
            
            for (index, type) in guest.types.enumerated(){
                
                let typeNumber = String(index + 1 )
                guestsInFB.child(guest.number).child(FBChild().guestsOrder).child(typeNumber).child(FBChild().typeName).setValue(type.name)
                guestsInFB.child(guest.number).child(FBChild().guestsOrder).child(typeNumber).child(FBChild().typePrice).setValue(type.price)
                
                
            }
            
        }
        
        
        
        
    }
    
    
    
    
    
    
    
    
    /*
    
    func sendOrderToFBDelete (table : Table){
        
     
        for guest in table.guests{
            
            guestsFb.child(guest.number).child(child.guestSum).setValue(guest.sum)
            
            for (index, order) in guest.types.enumerated(){
                
                guestsFb.child(guest.number).child(child.order).child("\(index)").child(child.typeName).setValue(order.name)
                guestsFb.child(guest.number).child(child.order).child("\(index)").child(child.typePrice).setValue(order.price)
            }
        }
    }
    */
    
    
    
    
    
}
