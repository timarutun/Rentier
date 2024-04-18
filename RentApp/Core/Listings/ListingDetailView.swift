//
//  ListingDetailView.swift
//  RentApp
//
//  Created by Timur on 4/15/24.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    @State var region = MKCoordinateRegion(
        center:  CLLocationCoordinate2D(
          latitude: 40.72204,
          longitude:-73.79501
        ),
        span: MKCoordinateSpan(
          latitudeDelta: 0.5,
          longitudeDelta: 0.5
       )
    )
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    @State private var hours = 1
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView()
                    .frame(height: 320)
                    .padding(.bottom)
                
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width: 40, height: 40)
                                .opacity(0.9)
                        }
                        .padding(.horizontal, 35)
                        .padding(.vertical, 50)
                })
            }
            
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
                
                VStack(alignment: .leading, spacing: 23) {
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
                            .frame(width: 70, height: 70)
                            .clipShape(Circle())
                    }
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("How to rent?")
                            .font(.callout)
                            .fontWeight(.semibold)
                        
                        Text("You can pick up the guitar at my house in Queens. Or you can submit the delivery request using rentier.")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                    }
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("How to return?")
                                .font(.callout)
                                .fontWeight(.semibold)
                            
                            Text("You can return the drum set by yourself. Or you can request a return delivery.")
                                .font(.footnote)
                                .foregroundStyle(.gray)
//                            Text("Plese note a security deposit is required for this rental. It's cost depends on the value of the rental and will be returned upon returning the rented object.")
//                                .font(.footnote)
                        }
                    Divider()
                    
                    HStack(spacing: 70) {
                        Text("4.86")
                            .font(.callout)
                        
                        
                        Text("43 reviews")
                            .font(.callout)
                            .underline()
                    }
                    .fontWeight(.semibold)
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach (1 ..< 5) { review in
                                VStack(alignment: .leading) {
                                    Text("Thank you so much. The rental process was smooth and simple")
                                        .font(.callout)
                                        
                                    HStack {
                                        Image("Alpa")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                            .clipShape(Circle())
                                        VStack(alignment: .leading) {
                                            Text("Alpa")
                                                .font(.title3)
                                                .fontWeight(.semibold)
                                            
                                            Text("New York, USA")
                                                .font(.footnote)
                                        }
                                        .padding()
                                    }
                                }
                                .padding()
                                .frame(width: 300)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(lineWidth: 1)
                                        .foregroundStyle(.purple)
                                }
                            }
                        }
                    }
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Pick up from")
                            .font(.headline)
                        
                        Map(coordinateRegion: $region)
                            .frame(height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        
                    }
                    
                }
                

            }
            .padding(.horizontal, 20)
            
            
        }
        .padding(.bottom, 125)
        .ignoresSafeArea()
        .toolbar(.hidden, for: .tabBar)
        
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("$\(hours * 15)")
                            .font(.title3)
                            .fontWeight(.semibold)
                        Text("\(hours) hours")
                            .font(.subheadline)
                        Text("Total before taxes")
                            .font(.footnote)
                            .foregroundStyle(.gray)

                    }
                    
                    Spacer()
                    
                    Button {} label: {
                        Text("Rent")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.purple)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }

                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
    }
}


#Preview {
    ListingDetailView()
}
