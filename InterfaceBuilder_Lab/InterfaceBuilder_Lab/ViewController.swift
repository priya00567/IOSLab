//
//  ViewController.swift
//  InterfaceBuilder_Lab
//
//  Created by student on 20/02/24.
//

import UIKit

class ViewController: UIViewController {

    //@IBOutlet weak var buttoncreated: UIButton!
    @IBOutlet weak var mainLabel: UILabel!

    
    //@IBOutlet weak var buttonCreated: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func changeTitle(_ sender: UIButton) {
        mainLabel.text = "This App rocks!"
    }
    
}

