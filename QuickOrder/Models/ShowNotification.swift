


/*

import Foundation
import UserNotifications
import UIKit

class ShowNotification : UIViewController, UNUserNotificationCenterDelegate {
    
    
    func show (){
        
        if #available(iOS 10.0, *) {
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error) in
                if !granted {
                    print("Something went wrong")
                } else {
                    UNUserNotificationCenter.current().getNotificationSettings { (settings) in
                        if settings.authorizationStatus != .authorized {
                            print("Notifications not allowed")
                            
                        }
                    }
                }
            }
            UNUserNotificationCenter.current().delegate = self
        } else {
            // Fallback on earlier versions
            let notificationSettings = UIUserNotificationSettings(types: [.alert, .sound, .badge], categories: nil)
            UIApplication.shared.registerUserNotificationSettings(notificationSettings)
            
        }
        
        showNotification()
    }
    
    



// Display Notification.
private func showNotification() {
    print("showNotification")
    if #available(iOS 16.0, *) {
        // Generate Notification.
        let content = UNMutableNotificationContent()
        
        // Substitute Title.
        content.title = "showNotification 1"
        
        // Assign Body.
        content.body = "Ny Bord Klar"
        
        // Set the sound.
        content.sound = UNNotificationSound.default
        
        // Generate a Request.
        let request = UNNotificationRequest.init(identifier: "notification1", content: content, trigger: nil)
        
        // issue a Notification.
        UNUserNotificationCenter.current().add(request) { (error) in
            print(error?.localizedDescription ?? "")
        }
    } else {
        // Fallback on earlier versions
        
        // Generate Notification.
        let notification = UILocalNotification()
        
        // Substitute Title.
        notification.alertTitle = "showNotification 2"
        
        // Assign Body.
        notification.alertBody  = "Ny Bord Klar"
        
        // Set the sound.
        notification.soundName = UILocalNotificationDefaultSoundName
        
        // issue a Notification.
        UIApplication.shared.scheduleLocalNotification(notification)
    }
}


@available(iOS 10.0, *)
func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
    completionHandler([.badge, .alert, .sound])
}

@available(iOS 10.0, *)
func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
    completionHandler()
}
    
    
    
}



*/
