//
//  TopTabBarView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/06/29.
//

import SwiftUI

struct TopTabBarView: View {
    @Binding var tabIndex: Int
    let firstText: String
    let secondText: String
    
    var body: some View {
        HStack(spacing: 0) {
            
            Spacer()
            
            TabBarButton(text: firstText, isSelected: .constant(tabIndex == 0))
                .onTapGesture { onButtonTapped(index: 0) }
            
            TabBarButton(text: secondText, isSelected: .constant(tabIndex == 1))
                .onTapGesture { onButtonTapped(index: 1) }
                
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 60, alignment: .center)
//        .overlay(Rectangle()
//                    .frame(height: 2)
//                    // The underline is visible only for the currently selected tab
//                    .foregroundColor(Color.gray)
//                   .padding(.top, 2)
//                   // Animates the tab selection
//                   .transition(.move(edge: .bottom)) ,alignment: .bottomLeading)
        //.border(width: 2, edges: [.bottom], color: .gray)
    }
    
    private func onButtonTapped(index: Int) {
        // withAnimation { tabIndex = index }
        tabIndex = index
    }
}

struct TopTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopTabBarView(tabIndex: .constant(0), firstText: "first", secondText: "second")
    }
}
