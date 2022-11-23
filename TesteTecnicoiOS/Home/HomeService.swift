//
//  HomeService.swift
//  TesteTecnicoiOS
//
//  Created by Mariana Brasil on 23/11/22.
//

import Foundation

enum FetchError: Error {
    case badURL
    case badResponse
    case decode
}

enum Networker {
    static func fetchData(completion: @escaping (Results?, Error?) -> Void) {
        let baseURL: String = "https://rickandmortyapi.com/api/character"
        guard let url = URL(string: baseURL) else {
            completion(nil, FetchError.badURL)
            return
        }
        let urlRequest = URLRequest(url: url)
        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard let response = response as? HTTPURLResponse, response.statusCode < 400 else {
                completion(nil, FetchError.badResponse)
                return
            }

            do {
                let decodedObject = try JSONDecoder().decode(Results.self, from: data!)
                completion(decodedObject, nil)
            } catch {
                completion(nil, FetchError.decode)
                return
            }
            
        }.resume()
    }
}
