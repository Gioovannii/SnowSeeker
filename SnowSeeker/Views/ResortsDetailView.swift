//
//  ResortsDetailView.swift
//  SnowSeeker
//
//  Created by Giovanni Gaffé on 2022/1/24.
//

import SwiftUI

struct ResortsDetailView: View {
    let resort: Resort
    
    var size: String {
        switch resort.size {
        case 1:
            return "Small"
        case 2:
            return "Average"
        default:
            return "Large"
        }
    }
    
    var price: String {
        String(repeating: "$", count: resort.price)
    }
    
    var body: some View {
        Group {
            VStack {
                Text("Size")
                    .font(.caption.bold())
                Text(size)
                    .font(.title3)
                    .padding(.leading)
            }
            
            VStack {
                Text("Price")
                    .font(.caption.bold())
                Text(price)
                    .font(.title3)
            }
        }
    }
}

struct ResortsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ResortsDetailView(resort: Resort.example)
    }
}
