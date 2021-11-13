//
//  InfoLineView.swift
//  ContactListSwiftUI
//
//  Created by Александр on 12.11.21.
//

import SwiftUI

struct InfoLineView: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.blue)
            Text(text)
        }
        .font(.title2)
    }
}

struct InfoLineView_Previews: PreviewProvider {
    static var previews: some View {
        InfoLineView(imageName: "person", text: "Hello")
    }
}
