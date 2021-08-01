//
//  SelectableMenuView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/06/22.
//

import SwiftUI

struct MenuCreate: View {
    var image: String
    var name: String
    // 132 x 155
    var body: some View {
        VStack {
            Image(image).resizable().frame(width: 26, height: 30).padding(.bottom, 3)
//            Image(systemName: image).resizable().frame(width: 30, height: 30).padding(.bottom, 5)
            Text(name).font(.system(size: 15))
        } // VStack
        .frame(width: UIScreen.main.bounds.width / 5, height: UIScreen.main.bounds.height / 8)
        
    }
}

struct SelectableMenuView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                MenuCreate(image: "emergency", name: "긴급모객")
                Spacer()
                MenuCreate(image: "globe", name: "국외")
                Spacer()
                MenuCreate(image: "koreaMap", name: "국내")
                Spacer()
                MenuCreate(image: "bus", name: "전세버스")
                Spacer()
                
            } // HStack
            .frame(maxHeight: 90)
            
            HStack {
                Spacer()
                MenuCreate(image: "airplane", name: "항공")
                Spacer()
                MenuCreate(image: "golf", name: "골프")
                Spacer()
                MenuCreate(image: "visa", name: "비자")
                Spacer()
                MenuCreate(image: "customTravel", name: "맞춤여행")
                Spacer()
                
            } // HStack
            .frame(maxHeight: 90)

        } // VStack
    }
}


struct SelectableMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SelectableMenuView()
    }
}
