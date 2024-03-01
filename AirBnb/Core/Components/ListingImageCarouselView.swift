//
//  ListingImageCarouselView.swift
//  AirBnb
//
//  Created by Olzhas Suleimenov on 28.02.2024.
//

import SwiftUI

struct ListingImageCarouselView: View {
    let images = ["hotel1", "hotel2", "hotel3", "hotel4"]

    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

struct ListingImageCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        ListingImageCarouselView()
    }
}
