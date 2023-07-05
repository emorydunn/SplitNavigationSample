//
//  PetShopSplitView.swift
//  SplitNavigationSample
//
//  Created by Emory Dunn on 7/5/23.
//

import SwiftUI

struct PetShopSplitView: View {

	@EnvironmentObject var petshop: PetShop
	
	var body: some View {
		NavigationSplitView {

			VStack {

				List {
					Section("Cats") {
						ForEach(petshop.cats) { cat in
							NavigationLink(value: cat) {
								Label(cat.name, image: "cat")
							}

						}
					}

					Section("Dogs") {
						ForEach(petshop.dogs) { dog in
							NavigationLink(value: dog) {
								Label(dog.name, image: "dog")
							}

						}
					}
				}
				.navigationDestination(for: Cat.self) { cat in
					CatDetailView(cat: cat)
				}
				.navigationDestination(for: Dog.self) { dog in
					DogDetailView(dog: dog)
				}

				Divider()
				SidebarButtons()
			}

		} detail: {
			Text("Select a Friend")
		}
	}
}

struct PetShopSplitView_Previews: PreviewProvider {
	static var previews: some View {
		PetShopSplitView()
	}
}
