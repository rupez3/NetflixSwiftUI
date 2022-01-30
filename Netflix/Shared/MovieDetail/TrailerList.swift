//
//  TrailerList.swift
//  Netflix (iOS)
//
//  Created by Rupesh Chhetri on 1/30/22.
//

import SwiftUI

struct TrailerList: View {
    
    var trailers: [Trailer]
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        VStack {
            ForEach(trailers) { trailer in
                VStack(alignment: .leading) {
                    VideoPreviewImageView(imageURL: trailer.thumbnailImageURL, videoURL: trailer.videoURL)
                        .frame(maxWidth: screen.width)
                    Text(trailer.name)
                        .font(.headline)
                }
                .foregroundColor(Color.white)
                .padding(.bottom, 10)
            }
        }
    }
}

struct TrailerList_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            TrailerList(trailers: [exampleTrailer1, exampleTrailer2, exampleTrailer3])
        }
    }
}
