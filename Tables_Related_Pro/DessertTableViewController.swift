import UIKit

class DessertTableViewController : UITableViewController{
    var  menu:[String:String] = [
        "Ice Cream Cone": "Ice Cream",
        "Ice Cream Sundae": "Ice Cream",
        "Apple Pie": "Pie",
        "Cherry Pie": "Pie",
        "Coconut Cream": "Pie",
        "Tiramisu": "Cake",
        "Chocolate Chip Cookie": "Cookie",
        "7-Layer Cake": "Cake",
        "Boston Cream Doughnut": "Doughnut",
        "Cruller": "Doughnut",
        "Long John": "Doughnut",
        "Blueberry Muffin": "Cake",
        "Vanilla Cupcake": "Cake",
        "Shake": "Drink",
        "Malted": "Drink",
        "Root Beer Float": "Drink",
        "Dark Choclate" : "Ice Cream"]
    var dessertList = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dessertList = [String](menu.keys)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dessertList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let title = dessertList[row]
        let detail = menu[title]!
        if row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
            cell.textLabel?.text = title
            cell.detailTextLabel?.text = detail
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "options cell",for: indexPath)
            cell.textLabel?.text = title
            cell.detailTextLabel?.text = detail
            return cell
        }
    }
    
}
//class FruitTableViewCell: UITableViewCell{
//
//    @IBOutlet weak var label: UILabel!
//    @IBOutlet weak var fruitImageView: UIImageView!
//}
//class FruitsTableViewController: UITableViewController {
//
//    var fruits = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry", "Clementine", "Coconut", "Cranberry", "Fig", "Grape", "Grapefruit", "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine", "Mango", "Melon", "Nectarine", "Olive", "Orange", "Papaya", "Peach", "Pear", "Pineapple", "Raspberry", "Strawberry"]
//
//    let section = ["pizza", "deep dish pizza", "calzone"]
//
//    let items = [["Margarita", "BBQ Chicken", "Pepperoni"], ["sausage", "meat lovers", "veggie lovers"], ["sausage", "chicken pesto", "prawns", "mushrooms"]]
//
//
//
//
//    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//       // return self.section.count
//        return 1
//    }
//
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.items[section].count
//        //return 1
//    }
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return self.section[section]
//        //return "Welcome to Fruits World"
//    }
//
//
//
//    // let SectionHeaderHeight: CGFloat = 30
//
////    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
////        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width, height: SectionHeaderHeight))
////        view.backgroundColor = UIColor(red: 253.0/255.0, green: 240.0/255.0, blue: 196.0/255.0, alpha: 1)
////        let label = UILabel(frame: CGRect(x: 30, y: 0, width: tableView.bounds.width - 30, height: SectionHeaderHeight))
////        label.font = UIFont.boldSystemFont(ofSize: 30)
////        label.textColor = UIColor.blue
////
////        label.text = self.section[section]
////        view.addSubview(label)
////        return view
////    }
//
//
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Fruits_Identifier", for: indexPath) as! FruitTableViewCell
//
//        let fruitName = fruits[indexPath.row]
//        cell.label?.text = self.items[indexPath.section][indexPath.row]
//        //cell.textLabel?.text = fruitName
//        //cell.detailTextLabel?.text = "Delicious! iuhkuhdfgkdhs fgklkldfigfkdlsgfkdlkfdghkfdhgkl kh uuuuhibi uiui"
//
//        cell.fruitImageView?.image = UIImage(named: fruitName)
//
//        return cell
//    }
//
//
//
//}
