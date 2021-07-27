//
//  SideMenuView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/06/24.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Image(systemName: "chevron.backward")
                .padding(.leading)
            HStack(spacing: 0) {
                Circle()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.gray)
                    .padding(.trailing, 10)
                
                Text("심찬영")
                    .font(.system(size: 12))
                
                Text("님")
                    .font(.system(size: 8))
            } // HStack
            .padding()
            
            ZStack(alignment: .topLeading) {
                
                Color.getThemeColor()
                    .cornerRadius(20, corners: [.topLeft, .topRight])
                VStack(alignment: .leading, spacing: 10) {
                    NavigationLink(destination: (Text("예약정보 View"))) {
                        Text("예약정보")
                    }

                    Divider()
                    Text("지역별 여행")
                    Divider()
                    Text("테마여행")
                    Divider()
                    Text("이벤트")
                    Divider()
                    Text("이용안내")
                    Divider()
                }
                .padding()
                .font(.system(size: 12))
                .foregroundColor(.black)
            }
        } // VStack
        .padding(.top)
        .background(Color.white)
        
    }
}

struct SideMenuView_PreViews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
