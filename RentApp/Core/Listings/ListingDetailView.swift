//
//  ListingDetailView.swift
//  RentApp
//
//  Created by Timur on 4/15/24.
//

import SwiftUI

struct ListingDetailView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    @State private var hours = 1
    
    var body: some View {
        ScrollView {
            
            ListingImageCarouselView()
                .frame(height: 320)
                .padding(.bottom)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Yamaha Drum Set")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("12 mi away")
                    .foregroundStyle(.gray)
                    .font(.footnote)
                Text("Available today")
                    .foregroundStyle(.gray)
                    .font(.footnote)
                
                
                HStack {
                    Button(action: {
                        hours -= 1
                    }, label: {
                        Image(systemName: "minus.circle")
                    })
                    
                    Text("\(hours) hr")
                    
                    Button(action: {
                        hours += 1
                    }, label: {
                        Image(systemName: "plus.circle")
                    })
                    
                    Spacer()
                    
                    Text("$\(hours * 15)")
                    
                }
                .font(.title)
                .padding(.vertical, 8)
                
                Divider()
                
                // Seller info
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Timur Arutiunian")
                            .font(.title3)
                            .fontWeight(.semibold)
                        HStack(spacing: 2) {
                            Image(systemName: "star.fill")
                            Text("4.86")
                        }
                        .font(.footnote)
                    }
                    
                    Spacer()
                    
                    Image("Timur")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                }

            }
            .padding(.horizontal, 20)
        }
        .ignoresSafeArea()
    }
}


#Preview {
    ListingDetailView()
}
