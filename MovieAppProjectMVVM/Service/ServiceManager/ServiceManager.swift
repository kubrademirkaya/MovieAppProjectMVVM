//
//  ServiceManager.swift
//  MovieAppProjectMVVM
//
//  Created by Kübra Demirkaya on 24.03.2023.
//

import Alamofire


// MARK: - Service Manager
final class ServiceManager {
    // ServiceManager() tipinde ServiceManager objesi oluşturuluyor. (Sınıftan nesne oluşturma)
    static let shared: ServiceManager = ServiceManager()
}

// ??
extension ServiceManager {
    func fetch<T>(path: String, onSuccess: @escaping (T) -> (), onError: (AFError) -> ()) where T: Codable {
        AF.request(path, encoding: JSONEncoding.default).validate().responseDecodable(of: T.self) { response in
            guard let model = response.value
            else {
                print(response.error as Any)
                return
            }
            onSuccess(model)
        }
    }
}
