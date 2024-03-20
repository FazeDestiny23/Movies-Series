//
//  Serie.swift
//  Movies&Series
//
//  Created by FRANCISCO AQUINO on 18/02/24.
//

import Foundation
import SwiftUI

struct Serie: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var gender: String
    var sinopsis: String
    var rating: Int
    var streaming: String
    var seasons: Int
    var episodes: Int
    
    private var imagesName: String
    var image: Image {
        Image(imagesName)
    }
}
