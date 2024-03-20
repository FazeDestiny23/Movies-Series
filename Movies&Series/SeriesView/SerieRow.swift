//
//  SerieRow.swift
//  Movies&Series
//
//  Created by FRANCISCO AQUINO on 18/02/24.
//

import SwiftUI

struct SerieRow: View {
    var serie: Serie
    var body: some View {
        HStack {
            serie.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(serie.name)
            Spacer()
        }
    }
}

#Preview {
    Group {
        SerieRow(serie: series[0])
        SerieRow(serie: series[1])
    }
}
