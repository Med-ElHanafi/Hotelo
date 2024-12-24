//
//  CitiesView.swift
//  Explore
//
//  Created by Mohamed El hanafi on 23/12/2024.
//

import SwiftUI

struct CitiesView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                nearbyButton
                
                ForEach(City.cities, id: \.description) { city in
                    cityButton(image: city.image, title: city.title)
                }
            }
        }
        .scrollIndicators(.hidden)
        .padding(.horizontal)
    }
    
    private func cityButton(image: String, title: String) -> some View {
        Button {
            
        } label: {
            HStack {
                Image(image, bundle: .module)
                    .resizable()
                    .scaledToFill()
                    .imageScale(.large)
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text(title)
                    .padding(.trailing)
            }
            .foregroundStyle(.white)
        }
        .padding(5)
        .background(Capsule().stroke(.gray))
    }
    
    private var nearbyButton: some View {
        Button {
            
        } label: {
            HStack {
                Image(systemName: "paperplane")
                    .imageScale(.large)
                    .frame(width: 40, height: 40)
                    .background(Color(.accent))
                    .clipShape(Circle())
                Text("Nearby")
                    .padding(.trailing)
            }
            .foregroundStyle(.black)
        }
        .padding(5)
        .background(Capsule().fill(.white))
    }
}

#Preview {
    CitiesView()
}
