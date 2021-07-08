//
//  TabBarButton.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/06/29.
//

import SwiftUI

struct TabBarButton: View {
    let text: String
    @Binding var isSelected: Bool
    
    var body: some View {
        Text(text)
            .fontWeight(isSelected ? .heavy : .light)
            .foregroundColor(isSelected ? MemberView(loginClicked: .constant(false)).themeColor : .gray.opacity(0.4))
            .padding(.bottom, 10)
            .frame(width: ((UIScreen.main.bounds.width - 60) / 2), alignment: .center)
            .border(width: 3, edges: [.bottom], color: isSelected ? MemberView(loginClicked: .constant(false)).themeColor : Color.gray.opacity(0.2))
    }
}
