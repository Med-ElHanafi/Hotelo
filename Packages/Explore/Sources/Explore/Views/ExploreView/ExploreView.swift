//
//  ExploreView.swift
//  HoteloUI
//
//  Created by Mohamed El hanafi on 04/12/2024.
//

import SwiftUI
import Shared

public struct ExploreView: View {
    private let height = 60.0
    private let didRecomendedTap: () -> Void
    
    public init(didRecomendedTap: @escaping () -> Void) {
        self.didRecomendedTap = didRecomendedTap
    }
    
    public var body: some View {
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
            .padding(.horizontal)
            
            Section {
                CitiesView()
            } header: {
                Text("Explore City")
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .foregroundStyle(.white)
            }
            
            OffersView()
            
            Section {
                RecomendationView {
                    didRecomendedTap()
                }
            } header: {
                Text("Recomended for your next trip")
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .foregroundStyle(.white)
            }
        }
        .background(Colors.primary)
    }
    
    var profileView: some View {
        HStack(alignment: .center) {
            ImageResources.user
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
        .circularButton()
    }
    
    var searchField: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .imageScale(.large)
                .foregroundStyle(.gray)
            TextField("", text: .constant(""), prompt: Text("Search for hotel").foregroundStyle(.gray))
        }
        .padding()
        .background(Colors.secondary)
        .clipShape(Capsule())
        .foregroundStyle(.white)
    }
    
    var filterButton: some View {
        Button {
            
        } label: {
            Image(systemName: "line.3.horizontal.decrease.circle")
        }
        .circularButton()
    }
}

#Preview {
    ExploreView {
        
    }
}
