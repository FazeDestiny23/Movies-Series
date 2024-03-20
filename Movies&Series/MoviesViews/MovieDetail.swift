//
//  MovieDetail.swift
//  Movies&Series
//
//  Created by FRANCISCO AQUINO on 18/02/24.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    var body: some View {
        VStack {
            Images(image: movie.image)
                .offset(y: -30)
                .padding(.top, 30)
            
            VStack (alignment: .leading) {
                Text(movie.name)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    
                HStack {
                    Text(movie.gender)
                        .font(.subheadline)
                    Spacer()
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                Text("About \(movie.name): ")
                    .font(.title3)
                Text(movie.sinopsis)
                    .font(.callout)
                    .fontWeight(.semibold)
                
                Divider()
                Text("Rating: \(movie.rating)")
                    .font(.caption)
                    .fontWeight(.regular)
                Text("Streaming on: \(movie.streaming)")
                    .font(.caption)
                    .fontWeight(.regular)
            }
            .padding()
        }
        .navigationTitle(movie.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    MovieDetail(movie: movies[1])
}
