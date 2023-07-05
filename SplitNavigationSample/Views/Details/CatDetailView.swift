//
//  CatDetailView.swift
//  SplitNavigationSample
//
//  Created by Emory Dunn on 7/5/23.
//

import SwiftUI

struct CatDetailView: View {

	@State var cat: Cat

	var body: some View {
		Form {
			TextField("Name", text: $cat.name)
		}
		.textFieldStyle(.roundedBorder)
		.navigationTitle(cat.name)
		.padding()
		.onChange(of: cat) { newValue in
			// Save the model into a backing store
		}
	}
}

struct CatDetailView_Previews: PreviewProvider {
	static var previews: some View {
		CatDetailView(cat: Cat(name: "Abby"))
	}
}
