//
//  OnBoardingViewModel.swift
//  HoteloUI
//
//  Created by Mohamed El hanafi on 03/12/2024.
//

import SwiftUI

@Observable class OnBoardingViewModel {
    let pages = OnBoardingPage.allCases
    
    var selectedTab = OnBoardingPage.discover
    
    func nextPage(page: OnBoardingPage) {
        if let index = pages.firstIndex(of: page), let nextPage = pages[safeIndex: index+1] {
            selectedTab = nextPage
        } else {
            selectedTab = pages[0]
        }
    }
}

