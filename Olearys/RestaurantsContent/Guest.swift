
import Foundation

class Guest {
    
    var types = [Type]()
    var number = ""
    var sum = 0.0
    var guestWishes = ""
    
    init(number : String){
        self.number = number
    }
    
    
    func makeOrder (type : Type){
        self.types.append(type)
        self.sum += type.price
    }
    
    func regretOrder (index : Int){
        self.sum -= self.types[index].price
        self.types.remove(at: index)
    }
    
   
    
    func orderSpecialOrder (guestwishes : String){
        self.guestWishes = guestwishes
    }
    
    
    
}
