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
    
    @State
    var showMenu = false
    
    var body: some View {
        let drag = DragGesture()
            .onEnded { gesture in
                if (gesture.translation.width < -100) {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }

        return NavigationView {
            ScrollView {
                 GeometryReader { geometry in
                     ZStack(alignment: .leading) {
                        VStack {
                            HStack {
//                                NavigationLink(destination: ListView()) {
//                                    Image(systemName: "line.3.horizontal").foregroundColor(.gray).frame(alignment: .leading).font(.title)
//                                } // NavigationLink
                                
                                Button(action: {
                                    withAnimation{ self.showMenu = true }  }) {
                                    Image(systemName: "line.3.horizontal").foregroundColor(.gray).frame(alignment: .leading).font(.title)
                                }
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
                            
                            Image("image_1").resizable().frame(width: geometry.size.width, height: geometry.size.height * 25)
                                .padding(.bottom, 20)
                            SelectableMenuView()
                            MyDivider()
                            
                            Spacer()
                        } // VStack
                        .frame(width: geometry.size.width)
                        .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                            .disabled(self.showMenu ? true : false)
                        
                        if self.showMenu {
                            SideMenuView()
                                .frame(width: geometry.size.width/2)
                                .transition(.move(edge: .leading))
                        }
                        
                    } // ZStack
                    .gesture(drag)
                } // GeometryReader
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
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
    
