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
                MenuCreate(image: "emergency2", name: "긴급모객")
                Spacer()
                MenuCreate(image: "globe2", name: "국외")
                Spacer()
                MenuCreate(image: "koreaMap3", name: "국내")
                Spacer()
                MenuCreate(image: "bus2", name: "전세버스")
                Spacer()
                
            } // HStack
            .frame(maxHeight: 90)
            
            HStack {
                Spacer()
                MenuCreate(image: "airplane2", name: "항공")
                Spacer()
                MenuCreate(image: "golf2", name: "골프")
                Spacer()
                MenuCreate(image: "visa2", name: "비자")
                Spacer()
                MenuCreate(image: "customTravel2", name: "맞춤여행")
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
