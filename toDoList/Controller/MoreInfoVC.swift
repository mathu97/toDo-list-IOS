//
//  MoreInfoVC.swift
//  toDoList
//
//  Created by Mathusan Selvarajah on 29/12/19.
//  Copyright © 2019 Mathusan Selvarajah. All rights reserved.
//

import UIKit

class MoreInfoVC: UIViewController {

	var toDoTableVC : ToDoListScreen? = nil
	var currTask : ToDoTask = ToDoTask(taskName: "Default Task", description: "This is a default task", importance: "Low")
	
	@IBOutlet weak var taskLabel: UILabel!
	@IBOutlet weak var descriptionView: UITextView!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		taskLabel.text = currTask.taskName
		descriptionView.text = currTask.description
    }
	
	@IBAction func completedTask(_ sender: Any) {
		if let toDos = toDoTableVC?.toDoTasks {
			for (index, task) in toDos.enumerated(){
				if currTask.taskName == task.taskName {
					toDoTableVC?.toDoTasks.remove(at: index)
					toDoTableVC?.tableView.reloadData()
					navigationController?.popViewController(animated: true)
				}
			}
		}
	}
	
}
