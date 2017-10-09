//
//  DisplayViewController.swift
//  PhotoViewer
//
//  Created by Hamid Hoseini on 8/11/17.
//  Copyright © 2017 Hamid Hoseini. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {
    
    var currentPhoto : Photo?

    @IBOutlet weak var currentImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: (currentPhoto?.filename)!)
        currentImage.image = image

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        let thirdScene = segue.destination as! NotesViewController
        // Pass the selected object to the new view controller.
        thirdScene.currentPhoto = currentPhoto
        
    }
    

}
