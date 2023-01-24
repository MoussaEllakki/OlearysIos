
import Foundation
import UIKit

extension LogInViewController {
    
    
    
    func addTextViewAndOkButton(){
        infoTextView.frame = CGRect(x: 0.0 , y : 0, width: view.frame.width , height:  view.frame.height )
        infoTextView.backgroundColor = .systemGray4
        infoTextView.text = Constance.info
        let fontsize = view.frame.width / 27
        infoTextView.font = UIFont.systemFont(ofSize: fontsize)
        infoTextView.isUserInteractionEnabled = false
        infoTextView.contentInset = UIEdgeInsets(top: 60, left: 0, bottom: 0, right: 0)
        okButton.frame =  CGRect(x: 100.0, y: view.frame.height  - 100 , width: view.frame.width - 200, height: 50)
        okButton.layer.cornerRadius = 10
        okButton.setTitle("OK", for: .normal)
        okButton.backgroundColor = .darkGray
        okButton.addTarget(self, action:#selector(self.okFunction), for: .touchUpInside)
        infoTextView.isHidden = true
        okButton.isHidden = true
        view.addSubview(infoTextView)
        view.addSubview(okButton)
    }
    
    
    @objc func okFunction() {
        hideInfoTextView()
    }
    
    
    func hideInfoTextView(){
        infoTextView.isHidden = true
        okButton.isHidden = true
        infoButton.isHidden = false
    }
    
    func showInfoTextView (){
        infoTextView.isHidden = false
        okButton.isHidden = false
        infoButton.isHidden = true
    }
    
    
}
