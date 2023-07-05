//
//  DogDetailView.swift
//  SplitNavigationSample
//
//  Created by Emory Dunn on 7/5/23.
//

import SwiftUI

struct DogDetailView: View {

	@ObservedObject var dog: Dog

	var body: some View {
		Form {
			TextField("Name", text: $dog.name)
		}
		.textFieldStyle(.roundedBorder)
		.navigationTitle(dog.name)
		.padding()
		.onChange(of: dog) { newValue in
			// Save the model into a backing store
		}
	}
}

struct DogDetailView_Previews: PreviewProvider {
	static var previews: some View {
		DogDetailView(dog: Dog(name: "Barney"))
	}
}
