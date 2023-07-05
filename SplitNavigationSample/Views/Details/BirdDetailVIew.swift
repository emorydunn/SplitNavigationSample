//
//  ChickenDetailView.swift
//  SplitNavigationSample
//
//  Created by Emory Dunn on 7/5/23.
//

import SwiftUI

struct BirdDetailView: View {

	var bird: Bird

	var body: some View {
		Form {
			// TextField("Name", text: $dog.name)
			Text(bird.name)
		}
		.textFieldStyle(.roundedBorder)
		.navigationTitle(bird.name)
		.padding()
		.onChange(of: bird) { newValue in
			// Save the model into a backing store
		}
	}
}

struct BirdDetailView_Previews: PreviewProvider {
	static var previews: some View {
		BirdDetailView(bird: Bird(name: "Un"))
	}
}
