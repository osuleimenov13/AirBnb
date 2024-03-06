//
//  ProfileOptionRowView.swift
//  AirBnb
//
//  Created by Olzhas Suleimenov on 05.03.2024.
//

import SwiftUI

struct ProfileOptionRowView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                Text(title)
                    .font(.subheadline)
                Spacer()
                Image(systemName: "chevron.right")
            }
            Divider()
        }
        .padding(.horizontal)
    }
}

struct ProfileOptionRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileOptionRowView(imageName: "gear", title: "Settings")
    }
}
