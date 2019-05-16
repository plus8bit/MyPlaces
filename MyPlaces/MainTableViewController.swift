//
//  MainTableViewController.swift
//  MyPlaces
//
//  Created by Nick on 14/05/2019.
//  Copyright © 2019 Nick Danilov. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    let restauranNames = [ "Dandelyan", "American Bar", "Manhattan", "The NoMad",
                           "Connaught Bar", "Bar Termini", "The Clumsies", "Atlas" ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return restauranNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = restauranNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restauranNames[indexPath.row])
        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 2
        cell.imageView?.clipsToBounds = true
        
        return cell
    }
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

}
