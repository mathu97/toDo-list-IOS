//
//  CreateToDoViewController.swift
//  toDoList
//
//  Created by Mathusan Selvarajah on 28/12/19.
//  Copyright © 2019 Mathusan Selvarajah. All rights reserved.
//

import UIKit

class CreateToDoViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
	@IBOutlet weak var toDoTaskTitle: UITextField!
	@IBOutlet weak var toDoTaskDesc: UITextView!
	
	var toDoTableVC : ToDoListScreen? = nil
	
	override func viewDidLoad() {
        super.viewDidLoad()
		toDoTaskTitle.delegate = self
		toDoTaskTitle.returnKeyType = UIReturnKeyType.done
		toDoTaskDesc.delegate = self
		toDoTaskDesc.returnKeyType = UIReturnKeyType.done
		
    }
	
	@IBAction func createPressed(_ sender: Any) {
		let newToDoTask = ToDoTask(taskName: toDoTaskTitle.text!, description: toDoTaskDesc.text, importance: "")
		toDoTableVC?.toDoTasks.append(newToDoTask)
		toDoTableVC?.tableView.reloadData()
		print(toDoTableVC!.toDoTasks)
		
		navigationController?.popViewController(animated: true)
	}
	
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
	
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if(text == "\n") {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
	
    
}
