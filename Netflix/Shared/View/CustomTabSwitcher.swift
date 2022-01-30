//
//  CustomTabSwitcher.swift
//  Netflix
//
//  Created by Rupesh Chhetri on 1/17/22.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    @State private var currentTab: CustomTab = .episodes
    
    var movie: Movie
    
    var tabs: [CustomTab]
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            //scrollable picker
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            // red bar
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor(tab == currentTab ? Color.red : Color.clear)
                            //button
                            Button {
                                currentTab = tab
                            } label: {
                                Text("\(tab.rawValue)")
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? Color.white : Color.gray)
                            }
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab), height: 30)
                        }
                    }
                }
            }
            // selected view
            switch currentTab {
            case .episodes:
                Text("Episodes")
            case .trailers:
                TrailerList(trailers: movie.trailers)
            case .more:
                MoreLikeThisView(movies: movie.moreLikeThis)
            }
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
            CustomTabSwitcher(movie: exampleMovie3, tabs: [.episodes, .trailers, .more])
        }
    }
}
