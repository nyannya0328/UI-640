//
//  LayoutView.swift
//  UI-640
//
//  Created by nyannyan0328 on 2022/08/12.
//

import SwiftUI

struct LayoutView: View {
    @State private var show : Bool = false
    var body: some View {
        
        let layout = show ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
        layout{
            
            
            sampleImage
            
            
        }
        .onTapGesture {
            withAnimation(.easeInOut(duration: 1)){
                
                show.toggle()
            }
        }
    }
    var sampleImage :some View{
        
        
        Group{
            
            Image("p1")
                .resizable()
                .aspectRatio(contentMode: .fill)
             .frame(width: 60,height: 60)
             .clipShape(Circle())
            
            Image("p2")
                .resizable()
                .aspectRatio(contentMode: .fill)
             .frame(width: 60,height: 60)
             .clipShape(Circle())
            
            
        }
        
    }
}

struct LayoutView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutView()
    }
}
