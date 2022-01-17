//
//  TopMoviePreview.swift
//  Netflix
//
//  Created by Rupesh Chhetri on 1/17/22.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    
    var movie: Movie
    
    func isCatergoryLast(_ cat: String) -> Bool {
        let totalCat = movie.categories.count
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != totalCat {
                return false
            }
        }
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self) { cat in
                        HStack {
                            Text(cat)
                                .font(.footnote)
                            if !isCatergoryLast(cat) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(Color.green)
                                    .font(.system(size: 6))
                            }
                        }
                    }
                }
                HStack {
                    Spacer()
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        //
                    }
                    Spacer()
                    HorizontalButton(text: "Play", imageName: "play.fill") {
                        //
                    }
                    .frame(width: 120)
                    Spacer()
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "plus", isOn: true) {
                        //
                    }
                    Spacer()
                }
            }
            .background(
                LinearGradient.blackOpacityGradient.padding(.top, 250)
            )
        }
        .foregroundColor(Color.white)
    }
    
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            TopMoviePreview(movie: exampleMovie3)
        }
    }
}
