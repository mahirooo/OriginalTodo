//
//  ViewController.swift
//  OriginalTodoApp
//
//  Created by 長崎茉優 on 2022/09/05.
//

import UIKit
import RealmSwift

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var todoTable: UITableView!
    
    let realm = try! Realm()
//    var todo: Results<Memo>!
    
    var todoArray = [String]()
    var detailArray = [String]()
//    var todo: Memo?
//    var detail: Memo?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        todoTable.dataSource = self
        todoTable.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let realm = try! Realm()
        let todoResults = realm.objects(Memo.self).first
//        let detailResults = realm.objects(detail.self)
        todoArray.append(<#String#>)
//        detailArray.append(detail)
        print(todoResults)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return todoArray.count
//        let todoData = realm.objects(Memo.self)
        return todoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = todoArray[indexPath.row]
        return cell!
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("\(todoArray[indexPath.row])が選ばれました！")
//    }


}


