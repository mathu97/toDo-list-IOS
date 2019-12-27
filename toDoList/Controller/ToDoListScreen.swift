//
//  ViewController.swift
//  toDoList
//
//  Created by Mathusan Selvarajah on 26/12/19.
//  Copyright © 2019 Mathusan Selvarajah. All rights reserved.
//

import UIKit

class ToDoListScreen: UIViewController {
	
	var toDoTasks: [ToDoTask] = []
	
	@IBOutlet weak var tableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		toDoTasks = createTempTasks()
		
		tableView.delegate = self
		tableView.dataSource = self
	}
	
	func createTempTasks() -> [ToDoTask] {
		var tempTasks: [ToDoTask] = []
		tempTasks.append(ToDoTask(taskName: "hello", importance: "bye"))
		
		return tempTasks
		
	}
	
}

extension ToDoListScreen: UITableViewDataSource, UITableViewDelegate {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return toDoTasks.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let task = toDoTasks[indexPath.row]
		let cell = tableView.dequeueReusableCell(withIdentifier: "toDoCell") as! ToDoCell
		cell.setLabel(task: task)
		
		return cell
	}
	
	
}

