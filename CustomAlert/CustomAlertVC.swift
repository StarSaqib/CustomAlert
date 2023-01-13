//
//  ViewController.swift
//  CustomAlert
//
//  Created by admin on 11/01/23.
//

import UIKit

class CustomAlertVC: UIViewController {

    @IBOutlet weak public var alertView: UIView!
    @IBOutlet weak public var alertMessage: UILabel!
    @IBOutlet weak public var activityIndicator: UIActivityIndicatorView!
    
    var message = ""
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        alertView.layer.cornerRadius = 20
        
    }
    
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if message != "" {
            alertMessage.text = message
        }
        activityIndicator.startAnimating()
    }


}

