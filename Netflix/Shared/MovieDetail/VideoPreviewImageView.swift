//
//  VideoPreviewImageView.swift
//  Netflix (iOS)
//
//  Created by Rupesh Chhetri on 1/30/22.
//

import SwiftUI
import Kingfisher

struct VideoPreviewImageView: View {
    
    var imageURL: URL
    var videoURL: URL
    
    @State private var isShowingVideoPlayer: Bool = false
    
    var body: some View {
        ZStack {
            KFImage(imageURL)
                .resizable()
                .scaledToFill()
            Button {
                isShowingVideoPlayer = true
            } label: {
                Image(systemName: "play.circle")
                    .foregroundColor(Color.white)
                    .font(.system(size: 40))
            }
            .sheet(isPresented: $isShowingVideoPlayer) {
                VideoView(url: videoURL)
            }

        }
    }
}

struct VideoPreviewImageView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreviewImageView(imageURL: exampleVideoURL1, videoURL: exampleImageURL1)
    }
}
