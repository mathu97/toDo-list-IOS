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
	var currToDo : ToDoTask = ToDoTask(taskName: "", description: "", importance: "")
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
	
	func setTask(task: ToDoTask){
		currToDo = task;
		cellLabel.text = currToDo.taskName
	}

}
