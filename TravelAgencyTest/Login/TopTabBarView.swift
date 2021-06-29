//
//  TopTabBarView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/06/29.
//

import SwiftUI

struct TopTabBarView: View {
    @Binding var tabIndex: Int
    
    var body: some View {
        HStack(spacing: 20) {
            
            Spacer()
            
            TabBarButton(text: "회원", isSelected: .constant(tabIndex == 0))
                .onTapGesture { onButtonTapped(index: 0) }
            
            Spacer()

            
            TabBarButton(text: "비회원", isSelected: .constant(tabIndex == 1))
                .onTapGesture { onButtonTapped(index: 1) }
                
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.maxX - 60, alignment: .center)
        .border(width: 1, edges: [.bottom], color: .black)
    }
    
    private func onButtonTapped(index: Int) {
        withAnimation { tabIndex = index }
    }
}

struct TopTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopTabBarView(tabIndex: .constant(0))
    }
}
