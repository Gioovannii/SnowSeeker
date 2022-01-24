//
//  bySideView.swift
//  SnowSeeker
//
//  Created by Giovanni Gaffé on 2022/1/21.
//

import SwiftUI

struct bySideView: View {
    var body: some View {
        NavigationView {
            NavigationLink {
                Text("New Secondary")
            } label: {
                Text("Hello, World!")
            }
            .navigationTitle("Primary")
            
            Text("Secondary")
            
            Text("Tertiary")
        }
    }
}

struct bySideView_Previews: PreviewProvider {
    static var previews: some View {
        bySideView()
    }
}
