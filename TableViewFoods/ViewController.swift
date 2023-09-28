//
//  ViewController.swift
//  TableViewFoods
//
//  Created by Ryan on 9/27/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let imageNames = ["Egg Fried Rice", "Lo Mein", "Orange Chicken", "Spring Rolls", "Sweet and Sour Chicken", "Wonton Soup"]
    let imageDescriptions = ["Stir-fry rice dish that consists of fluffy rice, beaten egg, seasoned with soy sauce, sesame oil, and green onions.", "Lo mein is a Chinese dish with noodles. It often contains vegetables and some type of meat or seafood, usually beef, chicken, pork, or shrimp","Orange chicken is an American Chinese dish of fried chicken in a sweet orange-flavored chili sauce glaze.", "Spring rolls are rolled appetizers or dim sum commonly found in Chinese and Southeast Asian cuisines.", "Sweet and Sour Chicken generally comprises cubes of white meat chicken deep-fried in batter and served with sweet and sour sauce.", "Wonton soup is a standard of Chinese cuisine and made from seasoned chicken broth with filled wontons."]

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("ImageTableViewCell", owner: self)?.first as! ImageTableViewCell
        
        cell.imgView?.image = UIImage(named: imageNames[indexPath.row])
        cell.lblImage.text = imageNames[indexPath.row]
        cell.lblDescription.text = imageDescriptions[indexPath.row]
        
        return cell
    }

}

