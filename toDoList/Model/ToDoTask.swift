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
	
	init(taskName: String, importance: String) {
		self.taskName = taskName
		self.importance = importance
	}
}
