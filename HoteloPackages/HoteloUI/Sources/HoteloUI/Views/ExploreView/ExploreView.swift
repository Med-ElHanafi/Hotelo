//
//  ExploreView.swift
//  HoteloUI
//
//  Created by Mohamed El hanafi on 04/12/2024.
//

import SwiftUI

struct ExploreView: View {
    @Environment(Coordinator.self) private var coordinator
    
    private let height = 60.0
    struct City {
        let image: String
        let title: String
    }
    
    private let cities: [City] = [
        .init(image: "dubai", title: "Dubai"),
        .init(image: "thailand", title: "Thailand")
    ]
    
    var body: some View {
        ScrollView {
            HStack {
                profileView
                    .frame(maxWidth: .infinity, alignment: .leading)
                notifyButton
            }
            .padding(.horizontal)
            
            HStack {
                searchField
                filterButton
            }
            .padding()
            
            Section {
                ScrollView(.horizontal) {
                    HStack {
                        nearbyButton
                        
                        ForEach(cities, id: \.title) { city in
                            cityButton(image: city.image, title: city.title)
                        }
                    }
                }
                .scrollIndicators(.hidden)
                .padding(.horizontal)
            } header: {
                Text("Explore City")
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .foregroundStyle(.white)
            }
        }
        .background(Color(.primary))
    }
    
    var profileView: some View {
        HStack(alignment: .center) {
            Image(.user2)
                .resizable()
                .scaledToFit()
                .frame(width: height, height: height)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("Hello, Jon Doe")
                    .font(.caption)
                Text("Let's Find Best Hotel")
                    .font(.body)
            }
            .foregroundStyle(.white)
        }
    }
    
    var notifyButton: some View {
        Button {
            
        } label: {
            Image(systemName: "bell")
        }
        .buttonStyle(CircularButton())
    }
    
    var searchField: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .imageScale(.large)
                .foregroundStyle(.gray)
            TextField("", text: .constant(""), prompt: Text("Search for hotel").foregroundStyle(.gray))
        }
        .padding()
        .background(Color(.secondary))
        .clipShape(Capsule())
        .foregroundStyle(.white)
    }
    
    var filterButton: some View {
        Button {
            
        } label: {
            Image(systemName: "line.3.horizontal.decrease.circle")
        }
        .buttonStyle(CircularButton())
    }
    
    var nearbyButton: some View {
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
        .background(.white)
        .clipShape(Capsule())
    }
    
    func cityButton(image: String, title: String) -> some View {
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
}

#Preview {
    ExploreView()
        .environment(Coordinator())
}
