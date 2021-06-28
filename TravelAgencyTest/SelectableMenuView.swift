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
            Image(image).resizable().frame(width: 30, height: 30).padding(.bottom, 5)
//            Image(systemName: image).resizable().frame(width: 30, height: 30).padding(.bottom, 5)
            Text(name).font(.system(size: 15))
        } // VStack
        .frame(width: 100, height: 100)
    }
}

struct SelectableMenuView: View {
    var body: some View {
        VStack {
            HStack {
                MenuCreate(image: "airplane", name: "항공")
                Spacer()
                MenuCreate(image: "bus", name: "버스")
                Spacer()
                MenuCreate(image: "hotel", name: "숙박")
                Spacer()
                MenuCreate(image: "golf", name: "골프")
            } // HStack
            .padding(.leading, 40)
            .padding(.trailing, 40)
            
            HStack {
                MenuCreate(image: "koreaMap", name: "국내")
                Spacer()
                MenuCreate(image: "globe", name: "국외")
                Spacer()
                MenuCreate(image: "customTravel", name: "제작여행")
                Spacer()
                MenuCreate(image: "emergency", name: "긴급모객")
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
