//
//  searchableView.swift
//  SnowSeeker
//
//  Created by Giovanni Gaffé on 2022/1/24.
//

import SwiftUI

struct searchableView: View {
    @State private var searchText = ""
    
    var body: some View {
        Text("Searching for \(searchText)")
            .searchable(text: $searchText, prompt: "Look for something")
            .navigationTitle("Searching")
    }
}

struct searchableView_Previews: PreviewProvider {
    static var previews: some View {
        searchableView()
    }
}
