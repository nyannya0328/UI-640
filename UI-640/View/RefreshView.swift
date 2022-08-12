//
//  RefreshView.swift
//  UI-640
//
//  Created by nyannyan0328 on 2022/08/12.
//

import SwiftUI

struct RefreshView: View {
    var body: some View {
        ScrollView{
            
            Text("Thank you")
        }
        .refreshable {
            
        }
    }
}

struct RefreshView_Previews: PreviewProvider {
    static var previews: some View {
        RefreshView()
    }
}
