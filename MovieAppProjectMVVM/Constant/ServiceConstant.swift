//
//  ServiceConstant.swift
//  MovieAppProjectMVVM
//
//  Created by Kübra Demirkaya on 24.03.2023.
// https://api.themoviedb.org/3/discover/movie?api_key=2246764352c98ca30b86915b84706112

import Foundation

extension Constant {
    
    enum ServiceEndpoint: String {
        
        case BASE_URL = "https://api.themoviedb.org/3/discover/movie?"
        case API_KEY = "api_key=2246764352c98ca30b86915b84706112"
        
        //Bu fonksiyon ile yukarıdaki parçalanmış linkin tamamı döndürülüyor
        static func moviesServiceEndpoint() -> String {
            "\(BASE_URL.rawValue)\(API_KEY.rawValue)"
        }
    }
    
}
