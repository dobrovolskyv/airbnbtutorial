//
//  ListingItemView.swift
//  airbnbtutorial
//
//  Created by Vladislav on 08/04/2024.
//

import SwiftUI

struct ListingItemView: View {
    //ипортируем картинки из ассетса
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8) {
            //это создаем слайдер
            ListingImageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            //вертикальный стак делаем, аналог флекса
            HStack(alignment: .top){
                VStack(alignment: .leading){
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4){
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    
                    Text("\(listing.rating)")
                }
                .foregroundColor(.black)
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
