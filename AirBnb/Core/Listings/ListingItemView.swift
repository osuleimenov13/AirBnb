//
//  ListingView.swift
//  AirBnb
//
//  Created by Olzhas Suleimenov on 27.02.2024.
//

import SwiftUI

struct ListingItemView: View {
    
    let images = ["hotel1", "hotel2", "hotel3", "hotel4"]
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            TabView {
                ForEach(images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            // listing detail
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text ("Miami, Florida").fontWeight(.semibold)
                    Text ("12 mi away").foregroundStyle(.gray)
                    Text ("Nov 3 - 10").foregroundStyle(.gray)
                    HStack(spacing: 4) {
                        Text ("$567").fontWeight(.semibold)
                        Text ("night" )
                    }
                }
                
                Spacer()
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("14.86")
                }
            }
            .font(.footnote)
        }
        .padding()
    }
}

struct ListingItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView()
    }
}
