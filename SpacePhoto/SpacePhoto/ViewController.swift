//
//  ViewController.swift
//  SpacePhoto
//
//  Created by Student on 16/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var copyrigthLabel: UILabel!
    
    
    
    func showUI() async throws{
       
    }
    
    
    
    override func viewDidLoad() {
        let photoInfoController = photoInfoController()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = ""
        imageView.image = UIImage(systemName: "photo.on.rectangle.angled")
        self.descriptionLabel.text = ""
        self.copyrigthLabel.text = ""
        
        
        //data is not fetched
        Task{
            do{
                
                let photoInfo = try await photoInfoController.fetchData()
                self.title = photoInfo.title
                
                self.descriptionLabel.text = photoInfo.description
                self.copyrigthLabel.text = photoInfo.copyright
            }
            catch{
                let photoInfo = try await photoInfoController.fetchData()
                self.title = "Cannot fetch data"
                
                self.descriptionLabel.text = "Cannot fetch data"
                self.copyrigthLabel.text = "Cannot fetch data"
            }
        }
     
    }
    
}
