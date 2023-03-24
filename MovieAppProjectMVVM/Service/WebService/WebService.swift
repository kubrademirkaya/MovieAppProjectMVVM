//
//  WebService.swift
//  MovieAppProjectMVVM
//
//  Created by Kübra Demirkaya on 24.03.2023.
//

import Alamofire


protocol ServiceProtocol {
    func fetchMovies(onSuccess: @escaping (Movies?) -> (), onError: @escaping (AFError) -> ())
}

// Protocolün çalışması için
// Protocoller içine gövde yazılmaz, sadece özelliği belirtilir. Gövde yani protocolün ne yapacağı class veya struct içerisinde belirtilir.
final class Service: ServiceProtocol {
    func fetchMovies(onSuccess: @escaping (Movies?) -> (), onError: @escaping (Alamofire.AFError) -> ()) {
        ServiceManager.shared.fetch(path: Constant.ServiceEndpoint.moviesServiceEndpoint()) { (response: Movies) in
            onSuccess(response)
        } onError: { error in
            onError(error)
        }

    }
    
    
}
 
