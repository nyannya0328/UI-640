//
//  TransitonChange.swift
//  UI-640
//
//  Created by nyannyan0328 on 2022/08/12.
//

import SwiftUI

struct TransitonChange: View {
    @State private var show : Bool = false
    var body: some View {
        VStack{
            
            if show{
                Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                 .frame(width: 60,height: 60)
                 .clipShape(Circle())
                 .transition(.push(from: .leading))
             
                
            }
            else{
                
                
                Image("p2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                 .frame(width: 60,height: 60)
                 .clipShape(Circle())
                 .transition(.push(from: .trailing))
            }
        }
        .onTapGesture {
            
            withAnimation(.linear(duration: 0.3)){
                
                show.toggle()
            }
        }
    }
}

struct TransitonChange_Previews: PreviewProvider {
    static var previews: some View {
        TransitonChange()
    }
}
