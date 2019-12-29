//
//  RoundedButton.swift
//  toDoList
//
//  Created by Mathusan Selvarajah on 27/12/19.
//  Copyright © 2019 Mathusan Selvarajah. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupButton()
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		setupButton()
	}
	
	func setupButton() {
		let height = 6.0
		
		layer.masksToBounds = false
		layer.shadowColor = UIColor.black.cgColor
		layer.shadowOffset = CGSize(width: 0, height: height)
		layer.shadowOpacity = 0.2
		layer.shadowRadius = CGFloat(height)
		layer.cornerRadius = 30
	}
	
}
