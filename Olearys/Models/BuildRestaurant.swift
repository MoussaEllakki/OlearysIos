
import Foundation
import Firebase

class BuildRestaurant {
    
    var ref :  DatabaseReference!
   
    
   init(){
        
        ref = Database.database().reference()
    }
    
    
    
    
    func buildTables (tableQuantity : Int , RestaurantID : String) {
      
        for i in 1...tableQuantity{
            
        
            let restaurant =   ref.child("Restaurant").child(RestaurantID)
            
            for i in 0..<tableQuantity{
                
               let  tableNumberPlusOne = String(i + 1)
               let tableNumber = String(i)
             
                restaurant.child("Tables").child(tableNumber).setValue(tableNumberPlusOne)
                
              
                
            }
        
        }
    
        
      
}
    
    
    

    
    
        
    func buildMenue(restaurantID : String){
        
        let restaurant =   ref.child("Restaurant").child(restaurantID).child("Menu").setValue("Falafel")
    
        
  }
    
    
}
