//
//  Data.swift
//  itunesRestAPI
//
//  Created by Evan Martho on 02/08/2022.
//

import Foundation

struct Response: Codable {
    var results: [Result]
}

struct Result: Codable {
    var trackId: Int
    var trackName: String
    var collectionName: String
}
