//
//  MovieDetailView.swift
//  Netflix
//
//  Created by Rupesh Chhetri on 1/17/22.
//

import SwiftUI

struct MovieDetailView: View {
    
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 30))
                    }

                }
                .padding(.horizontal, 20)
                
                ScrollView(.vertical) {
                    VStack {
                        
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInfoSubheadline(movie: movie)
                        
                        if movie.promotionHeadline != nil {
                            Text(movie.promotionHeadline!)
                                .bold()
                                .font(.headline)
                        }
                        
                        HorizontalButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                            //
                        }
                        
                        // Currrent episode info
                        CurrentEpisodeInfoView(movie: movie)
                        
                        CastInfoView(movie: movie)
                        
                        HStack(spacing: 60) {
                            SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                                
                            }
                            SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: true) {
                                
                            }
                            SmallVerticalButton(text: "Share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: true) {
                                
                            }
                            Spacer()
                        }
                        .padding(.leading, 20)
                        
                        //
                        CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
                        
                    }
                    .padding(.horizontal, 10)
                }
                
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
       MovieDetailView(movie: exampleMovie1)
    }
    
}

struct MovieInfoSubheadline: View {
    
    var movie: Movie
    
    var body: some View {
        HStack(spacing: 20) {
            
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonsDisplay)
            
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
    
}

struct RatingView: View {
    
    var rating: String
   
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20, alignment: .center)
    }
    
}

struct CastInfoView: View {
    
    var movie: Movie
    
    var body: some View {
        VStack(spacing: 4) {
            HStack {
                Text("Creators: \(movie.creators)")
                    .font(.subheadline)
                Spacer()
            }
            HStack {
                Text("Cast: \(movie.cast)")
                    .font(.subheadline)
                Spacer()
            }
        }
        .font(.caption)
        .foregroundColor(Color.gray)
        .padding(.vertical, 10)
    }
}

struct CurrentEpisodeInfoView: View {
    
    var movie: Movie
    
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                Spacer()
            }
            .padding(.vertical, 4)
            
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                Spacer()
            }
        }
    }
}
