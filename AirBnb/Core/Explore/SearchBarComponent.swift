//
//  SearchBarComponent.swift
//  AirBnb
//
//  Created by Olzhas Suleimenov on 04.03.2024.
//

import SwiftUI

struct SearchBarComponent: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
            }
            .font(.subheadline)
            .fontWeight(.semibold)
        }
    }
}

struct SearchBarComponent_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarComponent(title: "When", description: "Add dates")
    }
}
