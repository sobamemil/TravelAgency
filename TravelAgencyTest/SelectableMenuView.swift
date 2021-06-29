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
            Image(image).resizable().frame(width: 35, height: 35).padding(.bottom, 3)
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
                MenuCreate(image: "emergency", name: "긴급모객")
                
                MenuCreate(image: "globe", name: "국외")
                
                MenuCreate(image: "koreaMap", name: "국내")
                
                MenuCreate(image: "bus", name: "전세버스")
                
            } // HStack
            .padding(.leading, 40)
            .padding(.trailing, 40)
            
            HStack {
                MenuCreate(image: "airplane", name: "항공")
                
                MenuCreate(image: "golf", name: "골프")

                MenuCreate(image: "visa", name: "비자")
                
                MenuCreate(image: "customTravel", name: "맞춤여행")
                
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
