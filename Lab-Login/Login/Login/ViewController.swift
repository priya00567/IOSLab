//
//  ViewController.swift
//  Login
//
//  Created by student on 28/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else{return}
        if sender == forgotUserNameButton{
            segue.destination.navigationItem.title  = "Forgot Username"
        }else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else {
            segue.destination.navigationItem.title = username.text
        }
       
        
    }
    @IBAction func usernameAction(_ sender: Any) {
        performSegue(withIdentifier: "forgotUserNameButton", sender: sender)
    }
    @IBAction func passwordAction(_ sender: Any) {
        performSegue(withIdentifier: "forgotPasswordButton", sender: sender)
    }
}

