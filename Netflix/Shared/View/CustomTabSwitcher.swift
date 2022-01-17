//
//  CustomTabSwitcher.swift
//  Netflix
//
//  Created by Rupesh Chhetri on 1/17/22.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    var tabs: [CustomTab]
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            //scrollable picker
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            // red bar
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                            //button
                            Button {
                                //
                            } label: {
                                Text("\(tab.rawValue)")
                                    .font(.system(size: 16, weight: .bold))
                            }
                        }
                    }
                }
            }
            // selected view
            Text("Selected View")
        }
        .foregroundColor(Color.white)
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
        }
    }
}
