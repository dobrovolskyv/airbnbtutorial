//
//  ExploreService.swift
//  airbnbtutorial
//
//  Created by Vladislav on 13/04/2024.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
