//
//  PhotoTableViewController.swift
//  PhotoViewer
//
//  Created by Hamid Hoseini on 8/11/17.
//  Copyright © 2017 Hamid Hoseini. All rights reserved.
//

import UIKit

class PhotoTableViewController: UITableViewController {

    var photos = [Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //var newPhotos = Photo(name: "Nature 1", filename: "photo1", notes: "this is a bewutiful image1")
        
        var newPhotos = Photo(name: "Nature 1", filename: "photo1", notes: "this is a beautiful Image1")
        
        photos.append(newPhotos)
        
        newPhotos = Photo(name: "Nature 2", filename: "photo2", notes: "this is a bewutiful image2")
        photos.append(newPhotos)
        newPhotos = Photo(name: "Nature 3", filename: "photo3", notes: "this is a bewutiful image3")
        photos.append(newPhotos)
        newPhotos = Photo(name: "Nature 4", filename: "photo4", notes: "this is a bewutiful image4")
        photos.append(newPhotos)
        newPhotos = Photo(name: "Nature 5", filename: "photo5", notes: "this is a bewutiful image5")
        photos.append(newPhotos)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return photos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "photoCell", for: indexPath)

        // Configure the cell...
        let currentPhoto = photos[indexPath.row]
        
        cell.textLabel?.text = currentPhoto.name

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        let secondScene = segue.destination as! DisplayViewController
        // Pass the selected object to the new view controller.
        if let indexPath = self.tableView.indexPathForSelectedRow {
            let selectedPhoto = photos[indexPath.row]
            secondScene.currentPhoto = selectedPhoto
        }
        
    }
 

}
