//
//  ListingView.swift
//  AirBnb
//
//  Created by Olzhas Suleimenov on 27.02.2024.
//

import SwiftUI

struct ListingItemView: View {
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            ListingImageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing detail
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text ("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text ("12 mi away").foregroundStyle(.gray)
                    Text ("Nov 3 - 10").foregroundStyle(.gray)
                    HStack(spacing: 4) {
                        Text ("$\(listing.pricePerNight)").fontWeight(.semibold)
                        Text ("night" )
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("\(listing.rating)")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding()
    }
}

struct ListingItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView(listing: DeveloperPreview.shared.listings[0])
    }
}
