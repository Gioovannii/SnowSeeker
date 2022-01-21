//
//  AlertAndSheetView.swift
//  SnowSeeker
//
//  Created by Giovanni Gaffé on 2022/1/21.
//

import SwiftUI


struct User: Identifiable {
    var id = "Taylor Swift"
}

struct AlertAndSheetView: View {
    @State private var selectedUser: User? = nil
    
    var body: some View {
        Text("Hello, World!")
            .onTapGesture {
                selectedUser = User()
            }
            .alert(item: $selectedUser) { user in
                Alert(title: Text(user.id))
                
            }
    }
}

struct AlertAndSheetView_Previews: PreviewProvider {
    static var previews: some View {
        AlertAndSheetView()
    }
}
