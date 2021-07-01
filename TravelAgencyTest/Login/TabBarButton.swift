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
            .fontWeight(isSelected ? .heavy : .regular)
            .foregroundColor(isSelected ? MemberView().themeColor : .gray)
            .padding(.bottom, 10)
            .border(width: isSelected ? 3 : 1, edges: [.bottom], color: MemberView().themeColor)
    }
}
