//
//  TopRowButtons.swift
//  Netflix
//
//  Created by Rupesh Chhetri on 1/17/22.
//

import SwiftUI

struct TopRowButtons: View {
    
    var body: some View {
        HStack {
            Button {
                //
            } label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            }
            
            Spacer()
            //
            Button {
                //
            } label: {
                Text("TV Shows")
            }
            Spacer()
            //
            Button {
                //
            } label: {
                Text("Movies")
            }
            Spacer()
            
            Button {
                //
            } label: {
                Text("My List")
            }
            
            
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
    
}

struct TopRowButtons_Previews: PreviewProvider {
    static var previews: some View {
        TopRowButtons()
    }
}
