//
//  ViewController.swift
//  toDoList
//
//  Created by Mathusan Selvarajah on 26/12/19.
//  Copyright © 2019 Mathusan Selvarajah. All rights reserved.
//

import UIKit

class ToDoListScreen: UIViewController , UITableViewDataSource, UITableViewDelegate{
	
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
		tempTasks.append(ToDoTask(taskName: "hello", description: "This is the description", importance: "bye"))
		
		return tempTasks
		
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return toDoTasks.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let task = toDoTasks[indexPath.row]
		let cell = tableView.dequeueReusableCell(withIdentifier: "toDoCell") as! ToDoCell
		cell.setTask(task: task)
		
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let selectedTask = toDoTasks[indexPath.row]
		performSegue(withIdentifier: "moreInfoSegue", sender: selectedTask)
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let createVC = segue.destination as? CreateToDoViewController {
			createVC.toDoTableVC = self
		} else if let moreInfoVC = segue.destination as? MoreInfoVC {
			if let selectedTask = sender as? ToDoTask {
				moreInfoVC.toDoTableVC = self
				moreInfoVC.currTask = selectedTask
			}
		}
	}
	
}
