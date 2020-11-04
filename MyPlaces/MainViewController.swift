//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Леонид Лукашевич on 04.11.2020.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = ["Балкан Гриль", "Бочка", "Вкусные истории",
                           "Дастархан", "Индокитай", "Классик",
                           "Шок", "Bonsai", "Burger Heroes", "Kitchen",
                           "Love&Life", "Morris Pub", "Sherlock Holmes",
                           "Speak Easy", "X.O"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell

        cell.restaurantImage.image = UIImage(named: restaurantNames[indexPath.row])
        cell.restaurantImage.layer.cornerRadius = (cell.restaurantImage.frame.size.height) / 2
        cell.restaurantLabel.text = restaurantNames[indexPath.row]

        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
