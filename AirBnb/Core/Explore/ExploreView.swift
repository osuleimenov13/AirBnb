//
//  ExploreView.swift
//  AirBnb
//
//  Created by Olzhas Suleimenov on 27.02.2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()
                
                LazyVStack(spacing: 32) {
                    ForEach(0...10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                        }
                    }
                }
            }
            .navigationDestination(for: Int.self) { listing in
                ListingDetailView()
                    .navigationBarBackButtonHidden()
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
