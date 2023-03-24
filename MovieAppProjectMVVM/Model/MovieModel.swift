//
//  MovieModel.swift
//  MovieAppProjectMVVM
//
//  Created by Kübra Demirkaya on 24.03.2023.
//


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

//Movie API ile alınmış JSON dosyasının düzenlenmiş hali

import Foundation

// MARK: - Movies
struct Movies: Codable {
    let results: [Result]

}

// MARK: - Result
struct Result: Codable {
    
    let originalTitle, overview: String
    let popularity: Double
    let posterPath, releaseDate, title: String
    let voteAverage: Double
    
}

