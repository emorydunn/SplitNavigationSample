//
//  Chicken.swift
//  SplitNavigationSample
//
//  Created by Emory Dunn on 7/5/23.
//

import Foundation

struct Bird: Hashable, Identifiable {
	var id: UUID = UUID()

	var name: String
}
