//
//  MovieRow.swift
//  Movies&Series
//
//  Created by FRANCISCO AQUINO on 18/02/24.
//

import SwiftUI

struct MovieRow: View {
    var movie: Movie
    var body: some View {
        HStack {
            movie.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(movie.name)
            Spacer()
        }
    }
}

#Preview {
    Group {
        MovieRow(movie: movies[0])
        MovieRow(movie: movies[1])
    }
}
