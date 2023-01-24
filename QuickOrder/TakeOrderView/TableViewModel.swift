
import Foundation


class TableViewModel {
    
    
    var guestOrderChanged : ((TableViewModel) ->  Void)?
    var delegate : SendMsg? = nil
    var guests = [Guest]()
    var guest : Guest?
    var sum = 0.0
    var number = ""
    
    
    
    func addFirstguest(){
        guest = Guest()
        self.guests.append(guest!)
        guest?.number = String (guests.count)
    }
    
    
    var guestOrders : [Type] = []{
        didSet {
            self.guest?.orders = guestOrders
            guest?.countSum()
            getTableSum()
            guestOrderChanged?(self)
        }}
    
    
    func nextGuest (){
        if (guest?.sum == 0.0){
            delegate?.sendMsg(msg: Msg.guestDosentOrdered)
            
        }else{
            Singleton.sharedInstance.takeOrderViewController?.extraOrderTextView.text = ""
            guest = Guest()
            self.guests.append(guest!)
            guest?.number = String (guests.count)
            guestOrders.removeAll()
        }}
    
    func addSpecialOrder(specialOrder: String){
        guest?.specialOrder = specialOrder
        if (guest?.specialOrder != Constance.emptyText){
            guest?.guestHasspecialOrder = true
        }}
    
    
    func sendOrder(){
        if (self.sum == 0.0){
            delegate?.sendMsg(msg: Msg.tableHaseNoOrder)
        }else{
            delegate?.confirmSendingOrder(msg: Msg.areYouSure)
        }}
    
    
    func getTableSum(){
        self.sum = 0.0
        for guest in self.guests {
            self.sum += guest.sum
        }
    }
    
    
    
    
}





