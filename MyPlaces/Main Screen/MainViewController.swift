//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Леонид Лукашевич on 04.11.2020.
//

import UIKit

class MainViewController: UITableViewController {
    
    var places: [Place] = Place.getPlaces()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell
        
        let place = places[indexPath.row]
        
        if place.image == nil {
            cell.restaurantImage.image = UIImage(named: place.restaurantImage!)
        } else {
            cell.restaurantImage.image = place.image
        }
        cell.restaurantImage.layer.cornerRadius = (cell.restaurantImage.frame.size.height) / 2
        
        cell.restaurantLabel.text = place.name
        cell.locationLabel.text = place.location
        cell.typeLabel.text = place.type
        
        return cell
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        guard let newPlaceVC = segue.source as? NewPlaceViewController else { return }
        
        newPlaceVC.saveNewPlace()
        places.append(newPlaceVC.newPlace!)
        tableView.reloadData()
    }
}
