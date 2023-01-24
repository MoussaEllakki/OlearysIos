
import Foundation
import UIKit

class Singleton {
    
    var takeOrderViewController : TakeOrderViewController?
    static let sharedInstance = Singleton()
    
}
