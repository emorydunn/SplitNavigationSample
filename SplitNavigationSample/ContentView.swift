//
//  ContentView.swift
//  SplitNavigationSample
//
//  Created by Emory Dunn on 7/5/23.
//

import SwiftUI

struct ContentView: View {

	@EnvironmentObject var petshop: PetShop

	@State var useSplitView =  true

	var body: some View {
		Group {
			if useSplitView {
				PetShopSplitView()
			} else {
				PetShopNavView()
			}
		}
		.toolbar {
			ToolbarItem {
				Text(verbatim: useSplitView ? "NavigationSplitView" : "NavigationView")
			}
			ToolbarItem {
				Toggle("Split View", isOn: $useSplitView)
					.toggleStyle(.switch)
			}
		}
	}


}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
