//
//  Task.swift
//  toDoList
//
//  Created by Mathusan Selvarajah on 27/12/19.
//  Copyright © 2019 Mathusan Selvarajah. All rights reserved.
//

import Foundation

class ToDoTask{
	var taskName: String
	var importance: String
	var description: String
	
	init(taskName: String, description: String, importance: String) {
		self.taskName = taskName
		self.importance = importance
		self.description = description
	}
}
