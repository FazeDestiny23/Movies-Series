//
//  SerieDetail.swift
//  Movies&Series
//
//  Created by FRANCISCO AQUINO on 18/02/24.
//

import SwiftUI

struct SerieDetail: View {
    var serie: Serie
    var body: some View {
        VStack {
            Images(image: serie.image)
                .offset(y: -30)
                .padding(.top, 30)
            
            VStack (alignment: .leading) {
                Text(serie.name)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    
                HStack {
                    Text(serie.gender)
                        .font(.subheadline)
                    Spacer()
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                Text("About \(serie.name): ")
                    .font(.title3)
                Text(serie.sinopsis)
                    .font(.callout)
                    .fontWeight(.semibold)
                
                Divider()
                Text("Seasons: \(serie.seasons)")
                Text("Episodes: \(serie.episodes)")
                
                Divider()
                Text("Rating: \(serie.rating)")
                    .font(.caption)
                    .fontWeight(.regular)
                Text("Streaming on: \(serie.streaming)")
                    .font(.caption)
                    .fontWeight(.regular)
            }
            .padding()
        }
        .navigationTitle(serie.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SerieDetail(serie: series[0])
}
