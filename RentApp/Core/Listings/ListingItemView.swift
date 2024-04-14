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
            
            // Listing details
            HStack(alignment: .top) {
                // Details
                VStack(alignment: .leading) {
                    Text("Yamaha Drum Set")
                        .fontWeight(.semibold)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Apr 12 - 15")
                        .foregroundStyle(.gray)
                }
                Spacer()
                // Price
                HStack(spacing: 4) {
                    Text("$25")
                        .fontWeight(.semibold)
                    Text("/ day")
                }
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
