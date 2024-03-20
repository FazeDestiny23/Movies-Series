//
//  Home.swift
//  Movies&Series
//
//  Created by FRANCISCO AQUINO on 18/02/24.
//

import SwiftUI

struct Home: View {
    var image: Image
    var body: some View {
        VStack {
            image
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.blue, lineWidth: 4)
                }
            .shadow(radius: 7)
            Text ("B L O C K B U S T E R")
                .foregroundColor(.black)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    Home(image: Image("logo"))
}
