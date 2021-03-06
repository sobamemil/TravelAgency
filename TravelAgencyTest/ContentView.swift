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
    
    // 적용 시 List의 background color와 cell color를 변경할 수 있음.
    init() {
        UITableViewCell.appearance().backgroundColor = .clear
        UITableView.appearance().backgroundColor = .clear
    }
    
   
    var body: some View {
        let drag = DragGesture()
            .onEnded { gesture in
                if (gesture.translation.width < -70) {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }

        return NavigationView {
             GeometryReader { geometry in
                 ZStack(alignment: .leading) {
                     ScrollView {
                         VStack {
                             Image("shang").resizable().frame(width: geometry.size.width, height: geometry.size.height * 0.3)
                                 .padding(.top)
                             
                             SelectableMenuView()
                             
                             MyDivider()
                             
                             Section_1()
                                 .padding()
                             
                             MyDivider()
                                                          
                             Section_1()
                                 .padding()
                             
                             MyDivider()
                             Section_1()
                                 .padding()
                             
                             MyDivider()
                                                          
                         } // VStack
                         .frame(width: geometry.size.width)
                         .offset(x: self.showMenu ? geometry.size.width / 2 : 0)
                         .disabled(self.showMenu ? true : false)
                         
                     } // ScrollView
                     .preferredColorScheme(.light) // dark mode disable
                         
                     if self.showMenu {
                         SideMenuView()
                             .frame(width: geometry.size.width * 0.7)
                             .transition(.move(edge: .leading))
                         
                         Color.black.opacity(0.6)
                             .offset(x: geometry.size.width * 0.7)
                     }
                     
                 } // ZStack
                 .ignoresSafeArea(.all, edges: .bottom)
                 .navigationBarTitleDisplayMode(.inline)
                 .toolbar {
                     ToolbarItem(placement: .principal) {
                         Image("koreaTravelAgencyLogo").resizable().frame(width: geometry.size.width / 2, height: geometry.size.height * 0.075, alignment: .center)
                     }
                 }
                 .navigationBarItems(leading: (
                    Button(action: {
                     withAnimation {
                         self.showMenu.toggle()
                     }
                 }) {
                     Image(systemName: "line.3.horizontal").foregroundColor(.gray).frame(alignment: .leading).font(.title)
                 }), trailing: (
                    NavigationLink(destination: LoginView()) {
                     Image(systemName: "person").foregroundColor(.gray).font(.title)
                 } // NavigationLink
                        .isDetailLink(false) // NavigationLink
                 ))
                 .gesture(drag)
            } // GeometryReader
        } // NavigationView
        .accentColor(Color.getThemeColor())
    } // view
    
}

struct MyDivider: View {
    let color: Color = Color.accentColor
    let height: CGFloat = 10
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: height)
            .edgesIgnoringSafeArea(.horizontal)
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
