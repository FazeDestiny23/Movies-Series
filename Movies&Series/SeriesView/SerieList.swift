//
//  SerieList.swift
//  Movies&Series
//
//  Created by FRANCISCO AQUINO on 18/02/24.
//

import SwiftUI

struct SerieList: View {
    var body: some View {
        NavigationSplitView {
            List(series) { serie in
                NavigationLink {
                    SerieDetail(serie:serie)
                } label: {
                    SerieRow(serie: serie)
                }
            }
            .navigationTitle("Series")
        } detail : {
            Text("Select a Serie")
        }
    }
}

#Preview {
    SerieList()
}
