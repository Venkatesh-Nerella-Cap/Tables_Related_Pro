//
//  Custome_Table_View_Controller.swift
//  Tables_Related_Pro
//
//  Created by Venkatesh on 07/05/18.
//  Copyright © 2018 NVG. All rights reserved.
//

import UIKit
class FruitTableViewCell: UITableViewCell{

    @IBOutlet var label: UILabel!
    @IBOutlet var fruitImageView: UIImageView!
}
class Custome_Table_View_Controller: UITableViewController {

    var fruits = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry", "Clementine", "Coconut", "Cranberry", "Fig", "Grape", "Grapefruit", "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine", "Mango", "Melon", "Nectarine", "Olive", "Orange", "Papaya", "Peach", "Pear", "Pineapple", "Raspberry", "Strawberry"]

    let section = ["pizza", "deep dish pizza", "calzone"]

    let items = [["Margarita", "BBQ Chicken", "Pepperoni"], ["sausage", "meat lovers", "veggie lovers"], ["sausage", "chicken pesto", "prawns", "mushrooms"]]




    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       // return self.section.count
        return 1
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items[section].count
        //return 1
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.section[section]
        //return "Welcome to Fruits World"
    }





    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "custom_Identifier", for: indexPath) as! FruitTableViewCell

        let fruitName = fruits[indexPath.row]
        cell.label.layer.cornerRadius = cell.label.frame.height / 2
        cell.label?.text = self.items[indexPath.section][indexPath.row]
        //cell.textLabel?.text = fruitName
        //cell.detailTextLabel?.text = "Delicious! iuhkuhdfgkdhs fgklkldfigfkdlsgfkdlkfdghkfdhgkl kh uuuuhibi uiui"
        cell.fruitImageView?.layer.cornerRadius = cell.fruitImageView.frame.height / 2 
        
        cell.fruitImageView?.image = UIImage(named: fruitName)

        return cell
    }
}
