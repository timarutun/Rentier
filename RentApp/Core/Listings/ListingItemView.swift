//
//  ListingItemView.swift
//  RentApp
//
//  Created by Timur on 4/12/24.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            // Images
            ListingImageCarouselView()
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // Listing details
            HStack(alignment: .top) {
                // Details
                VStack(alignment: .leading) {
                    Text("Yamaha Drum Set")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Available today")
                        .foregroundStyle(.gray)
                }
                Spacer()
                // Price
                HStack(spacing: 4) {
                    Text("$15")
                        .fontWeight(.semibold)
                    Text("/ hour")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
