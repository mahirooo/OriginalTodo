//
//  Memo.swift
//  TodoApp
//
//  Created by 長崎茉優 on 2022/09/05.
//

import Foundation
import RealmSwift

class Memo: Object {
    @objc dynamic var todo: String = ""
    @objc dynamic var detail: String = ""
//    @objc dynamic var date: Int = ""
}
