//
//  Image.swift
//  Movies&Series
//
//  Created by FRANCISCO AQUINO on 18/02/24.
//

import SwiftUI

struct Imagenes: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Rectangle())
            .overlay {
                Rectangle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    Images(image: Image(""))
}
