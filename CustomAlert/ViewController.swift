//
//  ViewController.swift
//  CustomAlert
//
//  Created by admin on 11/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak public var messageTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkAlertButton(_ sender: UIButton) {
        pushToPopup()
        
    }
    
    public func pushToPopup() {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "CustomAlertVC") as! CustomAlertVC
        if let msg = messageTextView.text, msg != "" {
            newViewController.message = msg
            newViewController.modalPresentationStyle = .overFullScreen
            self.present(newViewController, animated: true, completion: nil)
        }
    }
    
    

}
