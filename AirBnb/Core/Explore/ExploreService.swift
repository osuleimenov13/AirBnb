//
//  ExploreService.swift
//  AirBnb
//
//  Created by Olzhas Suleimenov on 06.03.2024.
//

import Foundation

class ExploreService {
    
    func fetchListings() async throws -> [Listing] {
        DeveloperPreview.shared.listings
    }
}
