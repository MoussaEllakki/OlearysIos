
import Foundation
import Firebase

class BuildRestaurant {
    
    var ref :  DatabaseReference!
    
    init(){
        ref = Database.database().reference()
    }
    
    

    func buildTables (tableQuantity : Int) {
      
        let restaurant =   ref.child(Oneinstance().olearysEntre)
        
        for i in 1...tableQuantity{
            
            for i in 0..<tableQuantity{
                
               let  tableNumberPlusOne = String(i + 1)
               let tableNumber = String(i)
             
                restaurant.child(Oneinstance().tables).child(tableNumber).setValue(tableNumberPlusOne)
                
              
                
            }
        
        }
    
        
      
}
    
    
    

    
    
        
    func buildMenue(restaurantID : String){
        
        let restaurant =   ref.child("Restaurant").child(restaurantID).child("Menu").setValue("Falafel")
    
        
  }
    
    
}
