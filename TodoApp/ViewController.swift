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
    
    var todoArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        todoTable.dataSource = self
        todoTable.delegate = self
        print("ahahahha\(todoArray)")
        
//        todoArray.append(todoData)
        todoArray.append(todoDataArray)
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


