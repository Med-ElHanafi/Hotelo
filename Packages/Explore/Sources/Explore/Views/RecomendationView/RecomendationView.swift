//
//  RecomendationView.swift
//  Explore
//
//  Created by Mohamed El hanafi on 23/12/2024.
//

import SwiftUI
import Shared

struct RecomendationView: View {
    var onCitySelect: () -> Void
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(City.mock, id: \.description) { city in
                    Button {
                        onCitySelect()
                    } label: {
                        cityView(city: city)
                    }
                }
            }
        }
        .scrollIndicators(.hidden)
    }
    
    private func imageView(city: City) -> some View {
        city.image
            .resizable()
            .scaledToFill()
            .frame(height: 150)
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .circular))
            .padding([.top, .horizontal], 10)
            .overlay(alignment: .top) {
                HStack {
                    Text("\(city.price)% per night")
                        .foregroundStyle(.white)
                        .font(.callout)
                        .fontWeight(.medium)
                        .padding(10)
                        .gradientBackground()
                    
                    Spacer()
                    Button{
                        
                    } label: {
                        Image(systemName: "heart")
                            .foregroundStyle(.white)
                            .imageScale(.large)
                            .frame(width: 40, height: 40)
                            .gradientBackground()
                    }
                }
                .padding()
            }
    }
    
    private func descriptionView(city: City) -> some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading) {
                Text(city.description)
                    .foregroundStyle(.white)
                    .font(.callout)
                    .fontWeight(.medium)
                Label {
                    Text("\(city.distance) km away")
                        .foregroundStyle(.gray)
                    
                } icon: {
                    Image(systemName: "mappin.circle")
                        .foregroundStyle(Colors.accent)
                }
                .font(.footnote)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Button {
                
            } label: {
                Image(systemName: "arrow.right")
                    .foregroundStyle(Colors.primary)
                    .imageScale(.small)
                    .frame(width: 40, height: 40)
                    .background(Colors.accent)
                    .clipShape(Circle())
            }
            
        }
        .frame(maxWidth: .infinity)
        .padding([.bottom, .horizontal])
    }
    
    private func cityView(city: City) -> some View {
        VStack {
            imageView(city: city)
            descriptionView(city: city)
        }
        // TODO: remove UIScreen
        .frame(width: UIScreen.main.bounds.width - 100)
        .background(Colors.secondary)
        .clipShape(RoundedRectangle(cornerRadius: 25, style: .circular))
        .padding()
    }
}

#Preview {
    RecomendationView {
        
    }
}
