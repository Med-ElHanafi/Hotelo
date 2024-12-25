//
//  CitiesView.swift
//  Explore
//
//  Created by Mohamed El hanafi on 23/12/2024.
//

import SwiftUI
import Shared

struct CitiesView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                nearbyButton
                
                ForEach(City.mock, id: \.description) { city in
                    cityButton(image: city.image, title: city.title)
                }
            }
        }
        .scrollIndicators(.hidden)
        .padding(.horizontal)
    }
    
    private func cityButton(image: Image, title: String) -> some View {
        Button {
            
        } label: {
            HStack {
                image
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
                    .background(Colors.accent)
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
