//
//  SidebarButtons.swift
//  SplitNavigationSample
//
//  Created by Emory Dunn on 7/5/23.
//

import SwiftUI

struct SidebarButtons: View {

	@EnvironmentObject var petshop: PetShop

	var body: some View {
		HStack {

			Menu {
				Button("New Cat") {
					petshop.cats.append(Cat(name: "Fluffy"))
				}

				Button("New Dog") {
					petshop.dogs.append(Dog(name: "Fido"))
				}

			} label: {
				Image(systemName: "plus")
			}

			Button {
			} label: {
				Image(systemName: "minus")
			}
			.disabled(true)

			Spacer()

		}
		.buttonStyle(.borderless)
		.padding([.bottom, .leading], 8)
	}
}

struct SidebarButtons_Previews: PreviewProvider {
	static var previews: some View {
		SidebarButtons()
	}
}
