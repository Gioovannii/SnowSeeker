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
            NavigationLink(destination: Text("New Secondary")) {
                Text("Hello, World!")
            }
            .navigationTitle("Primary")
            
            Text("Secondary")
        }
    }
}

struct bySideView_Previews: PreviewProvider {
    static var previews: some View {
        bySideView()
    }
}
