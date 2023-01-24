
import Foundation
import UIKit


class DeviceManager {
    
    
    
    var width = 0
    var heigh = 0
    var tableInfoSize = 0
    var placeholderSize = 0
    var tittleeaderInSection = 0
    
    init(){
        
        
        if UIDevice.current.userInterfaceIdiom == .phone {
            width = 150
            heigh = 50
            tableInfoSize = 16
            placeholderSize = 12
            tittleeaderInSection = 18
        } else if UIDevice.current.userInterfaceIdiom == .pad {
          
            width = 210
            heigh = 80
            tableInfoSize = 30
            placeholderSize = 25
            tittleeaderInSection = 25
        } else {
            tableInfoSize = 25
            width = 220
            heigh = 80
            placeholderSize = 15
            tittleeaderInSection = 20
        }
        
    }
    
    
}
