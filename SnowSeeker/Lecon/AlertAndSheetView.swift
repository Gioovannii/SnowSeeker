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
    @State private var isShowingUser = false
    var body: some View {
        Text("Hello, World!")
            .onTapGesture {
                selectedUser = User()
                isShowingUser.toggle()
            }
            .alert("Welcome", isPresented: $isShowingUser) { }
//            .alert("Welcome", isPresented: $isShowingUser, presenting: selectedUser) { user in
//                Button(user.id) { }
//            }
        
//            .sheet(item: $selectedUser) { user in
//                Text(user.id)
//            }
    }
}

struct AlertAndSheetView_Previews: PreviewProvider {
    static var previews: some View {
        AlertAndSheetView()
    }
}
