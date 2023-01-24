
import Foundation

class CheckIfOrderDone {
    func areAllOrdersDone(guests: [Guest]) -> Bool {
        for guest in guests {
            if !guest.guestspecialOrderDone && guest.guestHasspecialOrder{
                return false
            }
            for type in guest.orders {
                if !type.done {
                    return false
                }
            }
        }
        return true
    }
}
