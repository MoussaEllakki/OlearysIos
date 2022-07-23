
import Foundation
import Firebase

class ObserveDataInfireBase {
  
    var ref :  DatabaseReference!
    var tables : [Table] = []
    var tableshavePayment = [Table] ()
    var tableshaveOrders = [Table] ()
    
    init(){
        ref = Database.database().reference()
    }
  
    
   
    func getTables ( completionHand: @escaping () -> ()){
        print("two")
      
       
        
        ref.child(FBChild().olearysEntre).child(FBChild().tables).observe(DataEventType.value, with: { snapshot in
          
            self.tables.removeAll()
            for   dataAsoneSnapShot in snapshot.children {
                
                let  oneSnapshot =  dataAsoneSnapShot as! DataSnapshot
                
               
                let  tableAsDectionary = oneSnapshot.value as! [String : AnyObject]
                
                let table = Table()
                table.number = tableAsDectionary[FBChild().tableNumber] as! String
                table.available = tableAsDectionary[FBChild().available] as! Bool
                table.done =  tableAsDectionary[FBChild().done] as! Bool
                print("four")
                self.tables.append(table)
            }
            
            print("five")
            completionHand()
            print("sisttttt")
        });
        
        print("three")
        
    }
    
    
    
    
     func getTablesWhichHavePayment ( completionHand: @escaping () -> ()){
         print("two")
       
        
         
         ref.child(FBChild().olearysEntre).child(FBChild().tables).observe(DataEventType.value, with: { snapshot in
           
             self.tableshavePayment.removeAll()
             for   dataAsoneSnapShot in snapshot.children {
                 
                 let  oneSnapshot =  dataAsoneSnapShot as! DataSnapshot
                 
                
                 let  tableAsDectionary = oneSnapshot.value as! [String : AnyObject]
                 
                 let table = Table()
                 table.number = tableAsDectionary[FBChild().tableNumber] as! String
                 table.paid = tableAsDectionary[FBChild().paid] as! Bool
                 
                 print("four")
                 if (table.paid == false){
                     self.tableshavePayment.append(table)
                 }
                 
             }
             
             print("five")
             completionHand()
             print("sisttttt")
         });
         
         print("three")
         
     }
     
    
    
     func getTablesWhichHaveOrder ( completionHand: @escaping () -> ()){
         print("two")
       
        
         
         ref.child(FBChild().olearysEntre).child(FBChild().tables).observe(DataEventType.value, with: { snapshot in
           
             self.tableshaveOrders.removeAll()
             for   dataAsoneSnapShot in snapshot.children {
                 
                 let  oneSnapshot =  dataAsoneSnapShot as! DataSnapshot
                 
                
                 let  tableAsDectionary = oneSnapshot.value as! [String : AnyObject]
                 
                 let table = Table()
                 table.number = tableAsDectionary[FBChild().tableNumber] as! String
                 table.hasOrder = tableAsDectionary[FBChild().hasOrder] as! Bool
                 
                 print("four")
                 if (table.hasOrder == true){
                     self.tableshaveOrders.append(table)
                 }
                 
             }
             
             print("five")
             completionHand()
             print("sisttttt")
         });
         
         print("three")
         
     }
    
    
    
}
