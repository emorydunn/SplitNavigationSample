//
//  PetShopNavView.swift
//  SplitNavigationSample
//
//  Created by Emory Dunn on 7/5/23.
//

import SwiftUI

struct PetShopNavView: View {
	
	@EnvironmentObject var petshop: PetShop
	
	var body: some View {
		NavigationView {

			VStack {

				List {
					Section("Cats") {
						ForEach(petshop.cats) { cat in
							NavigationLink {
								CatDetailView(cat: cat)
							} label: {
								Label(cat.name, image: "cat")
							}
						}
					}

					Section("Dogs") {
						ForEach(petshop.dogs) { dog in
							NavigationLink {
								DogDetailView(dog: dog)
							} label: {
								Label(dog.name, image: "dog")
							}
						}
					}

					Section("Birds") {
						ForEach(petshop.birds) { bird in
							NavigationLink {
								BirdDetailView(bird: bird)
							} label: {
								Label(bird.name, systemImage: "bird")
							}
						}
					}
				}

				Divider()
				SidebarButtons()
			}

			Text("Select a Friend")

		}
	}
}

struct PetShopNavView_Previews: PreviewProvider {
	static var previews: some View {
		PetShopNavView()
	}
}
