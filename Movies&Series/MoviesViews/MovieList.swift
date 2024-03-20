//
//  MovieList.swift
//  Movies&Series
//
//  Created by FRANCISCO AQUINO on 18/02/24.
//

import SwiftUI

struct MovieList: View {
    var body: some View {
        NavigationSplitView {
            List(movies) { movie in
                NavigationLink {
                    MovieDetail(movie:movie)
                } label: {
                    MovieRow(movie: movie)
                }
            }
            .navigationTitle("Movies")
        } detail : {
            Text("Select a Movie")
        }
    }
}

#Preview {
    MovieList()
}
