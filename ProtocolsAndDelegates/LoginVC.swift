//
//  LoginVC.swift
//  ProtocolsAndDelegates
//
//  Created by 大石耕司 on 2019/06/09.
//  Copyright © 2019 大石耕司. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var userNameEntryTxt: UITextField!
    var delegate: LoginCompleteDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func doneClicked(_ sender: Any) {
        delegate?.userCreated(name: userNameEntryTxt.text ?? "No name")
        dismiss(animated: true, completion: nil)
    }
}
