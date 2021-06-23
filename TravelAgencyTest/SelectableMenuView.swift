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
    
    var body: some View {
        VStack {
            Image(systemName: image).resizable().frame(width: 30, height: 30).padding(.bottom, 5)
            Text(name).font(.system(size: 15))
        } // VStack
        .frame(width: 100, height: 100)
    }
}

struct SelectableMenuView: View {
    var body: some View {
        VStack {
            HStack {
                MenuCreate(image: "airplane.departure", name: "항공")
                Spacer()
                MenuCreate(image: "bus.fill", name: "버스")
                Spacer()
                MenuCreate(image: "building.2", name: "숙박")
            } // HStack
            .padding(.leading, 40)
            .padding(.trailing, 40)
            
            HStack {
                MenuCreate(image: "globe.asia.australia", name: "국내")
                Spacer()
                MenuCreate(image: "globe.americas", name: "국외")
                Spacer()
                MenuCreate(image: "doc.plaintext", name: "제작여행")
            } // HStack
            .padding(.leading, 40)
            .padding(.trailing, 40)
        } // VStack
    }
}


struct SelectableMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SelectableMenuView()
    }
}
