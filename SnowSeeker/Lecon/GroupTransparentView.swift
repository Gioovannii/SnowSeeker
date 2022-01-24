//
//  GroupTransparentView.swift
//  SnowSeeker
//
//  Created by Giovanni Gaffé on 2022/1/21.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        Group {
            Text("Name: Paul")
            Text("Country: England")
            Text("Pets: Luna and Arya")
        }
        .font(.title)
    }
}

struct GroupTransparentView: View {
    @Environment(\.horizontalSizeClass) var sizeClass
    @State private var layoutVertically = false
    
    var body: some View {
        Group {
            if sizeClass == .compact {
                VStack(content: UserView.init)
                
            } else {
                HStack(content: UserView.init)
            }
        }
    }
}

struct GroupTransparentView_Previews: PreviewProvider {
    static var previews: some View {
        GroupTransparentView()
    }
}
