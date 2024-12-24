//
//  OffersView.swift
//  Explore
//
//  Created by Mohamed El hanafi on 23/12/2024.
//

import SwiftUI

struct OffersView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(Offer.offers, id: \.image) { offer in
                    offerView(offer: offer)
                }
            }
        }
        .scrollIndicators(.hidden)
    }
    
    private func offerView(offer: Offer) -> some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(offer.title)
                    .font(.title)
                    .fontWeight(.medium)
                Text(offer.description)
                    .font(.body)
                
                Button {
                    
                } label: {
                    HStack(alignment: .center) {
                        Text("Book Now")
                        Image(systemName: "arrow.right")
                    }
                    .foregroundStyle(.white)
                    .padding()
                    .background(Capsule().fill(Color(.primary)))
                }
                
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            
            Image(offer.image, bundle: .module)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 200)
        }
        // TODO: remove UIScreen
        .frame(width: UIScreen.main.bounds.width - 80)
        .background(Color(.accent))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .circular))
        .padding()
    }
}

#Preview {
    OffersView()
}