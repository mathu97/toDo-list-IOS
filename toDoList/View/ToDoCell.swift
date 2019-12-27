//
//  ToDoCell.swift
//  toDoList
//
//  Created by Mathusan Selvarajah on 27/12/19.
//  Copyright © 2019 Mathusan Selvarajah. All rights reserved.
//

import UIKit

class ToDoCell: UITableViewCell {

	@IBOutlet weak var cellLabel: UILabel!
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
	
	func setLabel(task: ToDoTask){
		cellLabel.text = task.taskName
	}

}
