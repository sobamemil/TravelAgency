//
//  AgencyNavigationView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/06/22.
//

import SwiftUI

struct AgencyNavigationView: View {
    var body: some View {
        //NavigationView {
            HStack {
                NavigationLink(destination: Text("list 화면")) {
                    Image(systemName: "line.3.horizontal").foregroundColor(.gray).frame(alignment: .leading).font(.largeTitle)
                } // NavigationLink
                Spacer()

                Text("코리아여행사").font(.largeTitle)
                Spacer()

                NavigationLink(destination: Text("user 화면")) {
                    Image(systemName: "person").foregroundColor(.gray).font(.largeTitle)
                } // NavigationLink
            } // HStack
            .padding(.horizontal, 20)
            // .background(Color.yellow)
        //}
    }
}

struct AgencyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        AgencyNavigationView()
    }
}
