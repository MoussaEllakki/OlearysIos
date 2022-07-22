

import Foundation
import Firebase

class GetDataFromeFireBase {
    
    var ref :  DatabaseReference!
    
    // perhaps it shoud delete
   // var tables : [Table] = []
    
    init(){
        ref = Database.database().reference()
    }
  
    
    
    
    
    // perhaps it shoud delete
    /*
    func getTables ( completionHand: @escaping () -> ()){
        print("two")
        self.tables.removeAll()
        
        ref.child(FBChild().olearysEntre).child(FBChild().tables).getData(completion:  { [self] error, snapshot in
            guard error == nil else {
                print(error!.localizedDescription)
                print("fellllll")
                return;
            }
            
            for   dataAsoneSnapShot in snapshot.children {
                
                let  oneSnapshot =  dataAsoneSnapShot as! DataSnapshot
                
               
                let  tableAsDectionary = oneSnapshot.value as! [String : AnyObject]
                
                let table = Table()
                table.number = tableAsDectionary[FBChild().tableNumber] as! String
                table.available = tableAsDectionary[FBChild().available] as! Bool
                print("four")
                self.tables.append(table)
            }
            
            print("five")
            completionHand()
            print("sisttttt")
        });
        
        print("three")
        
    }
    */
    
    
    
    
    
    
    
    
    /*
    func getTables ( completionHand: @escaping () -> ()){
        print("two")
        self.tables.removeAll()
        
        ref.child(RestaurantID().id).getData(completion:  { [self] error, snapshot in
            guard error == nil else {
                print(error!.localizedDescription)
                print("fellllll")
                return;
            }
            
            for   data in snapshot.children {
                let  dataSnapshot =  data as! DataSnapshot
                let  tableAsDectionary = dataSnapshot.value as! [String : AnyObject]
                print("four")
                
                var table = tableAsDectionary["Tables"]
                self.tables.append(table as! String)
            }
            
            print("five")
            completionHand()
            print("sisttttt")
        });
        
        print("three")
        
    }*/
    
    
    /*
    func setPeopleInFirebase (people : [Person]){
        
        for (index, person) in people.enumerated(){
            
            let person : [String : Any] = ["name" : person.name , "age" : person.age]
            
            ref.child("People").child("\(index)").setValue(person)
        }
    }*/
    
    
    /*
    func updateData (index : String , name : String , age : Int){
        
        let person : [String : Any] = ["name" : name , "age" : age]
        ref.child("People").child(index).updateChildValues(person)
    }
    
    
    
    
    func deletePerson (index : String){
        ref.child("People").child(index).removeValue()
    }
    
    
    
    func addPerson (index : String , name : String , age : Int){
        
        let person : [String : Any] = ["name" : name , "age" : age]
        ref.child("People").child(index).setValue(person)
    }
    
    */
    
    
    
}
