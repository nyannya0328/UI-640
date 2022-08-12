//
//  TextView.swift
//  UI-640
//
//  Created by nyannyan0328 on 2022/08/12.
//

import SwiftUI

struct TextView: View {
    @State private var show : Bool = false
    var body: some View {
        Text("Hello, World!")
            .font(.largeTitle)
            .fontWeight(show ? .bold : .light)
            .contentTransition(.interpolate)
            .foregroundColor(show ? .green : .red)
            .onTapGesture {
                
                withAnimation(.easeInOut(duration: 1)){
                    
                    show.toggle()
                }
                
            }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
