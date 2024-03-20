//
//  Movie.swift
//  Movies&Series
//
//  Created by FRANCISCO AQUINO on 18/02/24.
//

import Foundation
import SwiftUI

struct Movie: Hashable, Decodable, Identifiable {
    var id: Int
    var name: String
    var gender: String
    var sinopsis: String
    var rating: Int
    var streaming: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
