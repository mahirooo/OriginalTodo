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

    var todoList: Results<Memo>!
    var detailList: Results<Memo>!
    var dateList: Results<Memo>!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        todoTable.dataSource = self
        todoTable.delegate = self
        
        self.todoList = realm.objects(Memo.self)
        self.detailList = realm.objects(Memo.self)
        self.dateList = realm.objects(Memo.self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let realm = try! Realm()
        let todoResults = realm.objects(Memo.self)
        
        todoTable.reloadData()
        print(todoList.count)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CellTableViewCell
        let memo: Memo = self.todoList[indexPath.row]
        cell.textLabel?.text = memo.todo
        cell.datelabel?.text = memo.date
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("\(todoArray[indexPath.row])が選ばれました！")
//    }


}


