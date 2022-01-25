//
//  Facility.swift
//  SnowSeeker
//
//  Created by Giovanni Gaffé on 2022/1/25.
//

import SwiftUI

struct Facility {
    static func icon(for facility: String) -> some View {
        let icons = [
            "Accommodation": "house",
            "Beginners": "1.circle",
            "Cross-country": "map",
            "Eco-friendly": "leaf.arrow.citclepath",
            "Family": "person.3"
            ]
        
        if let iconName = icons[facility] {
            let image = Image(systemName: iconName)
                .accessibilityLabel(Text(facility))
                .foregroundColor(.secondary)
            return image
        } else {
            fatalError("Unknown facility type: \(facility)")
        }
    }
}
