//
//  PopularHotelsView.swift
//  PopularHotels
//
//  Created by Mohamed El hanafi on 24/12/2024.
//

import SwiftUI

public struct PopularHotelsView: View {
    let onBackButtonTap: () -> Void
    
    public init(onBackButtonTap: @escaping () -> Void) {
        self.onBackButtonTap = onBackButtonTap
    }
    
    public var body: some View {
        ScrollView {
            ForEach(Hotel.hotels, id: \.name) {
                hotelView(hotel: $0)
            }
        }
        .background(Color(.primary))
        .scrollIndicators(.hidden)
        .navigationTitle("Popular Hotels")
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    onBackButtonTap()
                } label: {
                    HStack {
                        Image(systemName: "arrow.backward")
                            .foregroundStyle(.white)
                            .frame(width: 40, height: 40)
                            .background(
                                Circle()
                                    .fill(Color(.secondary))
                            )
                    }
                }
            }
        }
    }
    
    func hotelView(hotel: Hotel) -> some View {
        HStack(alignment: .center) {
            Image(hotel.image, bundle: .module)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .circular))
                .padding(10)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(hotel.name)
                    .foregroundStyle(.white)
                    .font(.callout)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                Label {
                    Text("\(hotel.distance) km away")
                } icon: {
                    Image(systemName: "arrowshape.left.arrowshape.right")
                        .imageScale(.small)
                }
                .foregroundStyle(.gray)
                .font(.footnote)
                
                Text("Start from $\(hotel.price) per night")
                    .foregroundStyle(.gray)
                    .font(.footnote)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Label(String(format: "%.1f", hotel.rating), systemImage: "star.fill")
                .padding(.trailing, 10)
                .foregroundStyle(.yellow)
        }
        .background(Color(.secondary))
        .clipShape(RoundedRectangle(cornerRadius: 25, style: .circular))
        .padding(.horizontal)
    }
}

#Preview {
    NavigationStack {
        PopularHotelsView {
            
        }
    }
}
