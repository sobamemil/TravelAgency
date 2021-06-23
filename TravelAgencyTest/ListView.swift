//
//  ListView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/06/23.
//

import SwiftUI

struct ListView: View {
    
    init() {
        UITableView.appearance().tableFooterView = UIView()
        
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        List {
            Section(header: Text("Header")) {
                ForEach(1...3, id: \.self) { (index) in
                    Text("List View \(index)")
                }
            } // Section
            
            Section(header: Text("Header2")) {
                ForEach(1...4, id: \.self) { index in
                    Text("header2 List \(index)")
                }
            } // Section
        } // List
        .listStyle(.grouped)
        .navigationBarTitle("List")
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
