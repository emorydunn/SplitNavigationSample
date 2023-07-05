//
//  SplitNavigationSampleApp.swift
//  SplitNavigationSample
//
//  Created by Emory Dunn on 7/5/23.
//

import SwiftUI

@main
struct SplitNavigationSampleApp: App {
	var body: some Scene {
		WindowGroup {
			ContentView()
				.environmentObject(PetShop())
		}
	}
}
