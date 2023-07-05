//
//  PetShop.swift
//  SplitNavigationSample
//
//  Created by Emory Dunn on 7/5/23.
//

import Foundation

class PetShop: ObservableObject {

	@Published var cats: [Cat] = [
		Cat(name: "Abby"),
		Cat(name: "Smokey"),
		Cat(name: "Eliot"),
		Cat(name: "Poco")
	]

	@Published var dogs: [Dog] = [
		Dog(name: "Luna"),
		Dog(name: "Barney"),
		Dog(name: "Gracey"),
	]

}
