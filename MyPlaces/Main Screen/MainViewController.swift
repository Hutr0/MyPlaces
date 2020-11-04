//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Леонид Лукашевич on 04.11.2020.
//

import UIKit

class MainViewController: UITableViewController {
    
    let places: [Place] = Place.getPlaces()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell
        
        cell.restaurantImage.image = UIImage(named: places[indexPath.row].image)
        cell.restaurantImage.layer.cornerRadius = (cell.restaurantImage.frame.size.height) / 2
        
        cell.restaurantLabel.text = places[indexPath.row].name
        cell.locationLabel.text = places[indexPath.row].location
        cell.typeLabel.text = places[indexPath.row].type
        
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
    
    @IBAction func cancelAction(segue: UIStoryboardSegue) {}
}
