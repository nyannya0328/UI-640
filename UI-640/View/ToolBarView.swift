//
//  ToolBarView.swift
//  UI-640
//
//  Created by nyannyan0328 on 2022/08/12.
//

import SwiftUI

struct ToolBarView: View {
    var body: some View {
        NavigationStack{
            
            Text("Hello")
                .navigationTitle("Thank you")
                .toolbarBackground(Color.orange, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
              
        }
    }
}

struct ToolBarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarView()
    }
}
