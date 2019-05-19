//
//  MainTableViewController.swift
//  MyPlaces
//
//  Created by Nick on 14/05/2019.
//  Copyright © 2019 Nick Danilov. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    var myPlaces = Place.getPlaces()
//        Place(name: "Dandelyan", location: "Montreal", type: "Restaurant", image: "Dandelyan.jpg")
//        Place(name: "American Bar", location: "New York", type: "Restaurant", image: "American Bar.jpg"),
//        Place(name: "The NoMad", location: "Milan", type: "Bar", image: "The NoMad.jpg"),
//        Place(name: "Connaught Bar", location: "London", type: "Bar", image: "Connaught Bar.jpg"),
//        Place(name: "Bar Termini", location: "San Francisco", type: "Restaurant", image: "Bar Termini.jpg"),
//        Place(name: "The Clumsies", location: "Paris", type: "Restaurant", image: "The Clumsies.jpg"),
//        Place(name: "Atlas", location: "Tokyo", type: "Restaurant", image: "Dandelyan.jpg"),
//        Place(name: "Manhattan", location: "New York", type: "Restaurant", image: "Manhattan.jpg"),
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myPlaces.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        cell.nameLabel?.text = myPlaces[indexPath.row].name
        cell.imageOfPlace?.image = UIImage(named: myPlaces[indexPath.row].image)
        cell.locationLabel.text = myPlaces[indexPath.row].location
        cell.typeLabel.text = myPlaces[indexPath.row].type
        
        
        cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace?.clipsToBounds = true
        
        return cell
    }
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    @IBAction func cancelAction(_ sender: UIStoryboardSegue) {}
    
    

}
