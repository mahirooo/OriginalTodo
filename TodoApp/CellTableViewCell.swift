//
//  CellTableViewCell.swift
//  TodoApp
//
//  Created by 長崎茉優 on 2022/09/11.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    @IBOutlet var todolabel: UILabel!
    @IBOutlet var datelabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
