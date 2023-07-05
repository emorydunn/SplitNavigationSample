//
//  Dog.swift
//  SplitNavigationSample
//
//  Created by Emory Dunn on 7/5/23.
//

import Foundation

class Dog: ObservableObject, Hashable, Identifiable {

	var id: UUID = UUID()

	@Published
	var name: String

	init(name: String) {
		self.name = name
	}

	static func == (lhs: Dog, rhs: Dog) -> Bool {
		lhs.name == rhs.name
	}

	func hash(into hasher: inout Hasher) {
		hasher.combine(name)
	}


}
