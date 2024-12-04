//
//  OnBoardingView.swift
//  HoteloUI
//
//  Created by Mohamed El hanafi on 02/12/2024.
//

import SwiftUI

struct OnBoardingView: View {
    @State private var viewModel = OnBoardingViewModel()
    @Environment(Coordinator.self) private var coordinator
    
    var body: some View {
        TabView(selection: $viewModel.selectedTab) {
            ForEach (viewModel.pages) { page in
                pageView(page: page)
                    .tag(page)
            }
        }
        .tabViewStyle(.page)
        .ignoresSafeArea()
    }
    
    func pageView(page: OnBoardingPage) -> some View {
        clippedImage(image: page.image)
            .overlay(alignment: .bottomTrailing) {
                VStack {
                    VStack(alignment: .trailing, spacing: 20) {
                        Text(page.id)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        Text(page.description)
                            .font(.title2)
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.trailing)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.bottom, 20)
                    
                    HStack {
                        Button("Skip") {
                            coordinator.changeState(state: .explore)
                        }
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Button {
                            viewModel.nextPage(page: page)
                        } label: {
                            Image(systemName: "arrow.right")
                                .foregroundStyle(Color(.primary))
                            
                        }
                        .frame(width: 50, height: 50)
                        .background(Color(.accent))
                        .clipShape(Circle())
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                }
                .padding()
            }
    }
    
    func clippedImage(image: Image) -> some View {
        GeometryReader { geo in
            ZStack {
                Color(.primary)
                image
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .ignoresSafeArea()
                    .clipShape(CurvedTrapeze())
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    OnBoardingView()
        .environment(Coordinator())
}
