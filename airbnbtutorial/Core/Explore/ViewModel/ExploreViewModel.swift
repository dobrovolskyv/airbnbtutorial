//
//  ExploreViewModel.swift
//  airbnbtutorial
//
//  Created by Vladislav on 13/04/2024.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private var service: ExploreService
    
    init(service: ExploreService){
        self.service = service
        
        Task{await fetchListings()}
    }
    
    func fetchListings() async {
        do{
            self.listings = try await service.fetchListings()
        } catch{
            print ("DEBUG: Failed to fetch listings with errors : \(error.localizedDescription)")
        }
    }
}
