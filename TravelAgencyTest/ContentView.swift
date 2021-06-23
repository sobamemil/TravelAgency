//
//  ContentView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State
    var isNavigationBarHidden: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        NavigationLink(destination: ListView()) {
                            Image(systemName: "line.3.horizontal").foregroundColor(.gray).frame(alignment: .leading).font(.title)
                        } // NavigationLink
                        Spacer()

                        Text("코리아여행사").font(.title)
                        Spacer()

                        NavigationLink(destination: Text("user 화면")) {
                            Image(systemName: "person").foregroundColor(.gray).font(.title)
                        } // NavigationLink
                    } // HStack
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                    // .background(Color.yellow)
                    .navigationBarTitle("메인")
                    .navigationBarHidden(self.isNavigationBarHidden)
                    .onAppear {
                        self.isNavigationBarHidden = true
                    }
                    
                    Image("image_1").resizable().frame(height: 250)
                        .padding(.bottom, 20)
                    SelectableMenuView()
                    MyDivider()
                    
                    Spacer()
                } // VStack
            } // ScrollView
        } // NavigationView
    }
}

struct MyDivider: View {
    let color: Color = .gray
    let width: CGFloat = 10
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: width)
            .edgesIgnoringSafeArea(.horizontal)
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
