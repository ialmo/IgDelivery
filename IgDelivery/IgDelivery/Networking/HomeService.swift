//
//  HomeService.swift
//  IgDelivery
//
//  Created by labstation on 12/09/25.
//

import Foundation
import Alamofire

enum RequestsError: Error {
    case invalidURL
    case errorRequest(error: String)
    
}

struct HomeService {
    
    func fetchData() async throws -> Result<[StoreType], RequestsError> {
        guard let url = URL(string:
                                "https://private-eee242d-ialmogontijo.apiary-mock.com/home")
        else { return .failure(.invalidURL)
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let (data, _) = try await URLSession.shared.data(for: request)
        let storesObjects = try JSONDecoder().decode([StoreType].self, from: data)
        
        return .success(storesObjects)
    }
        
        func confirmOrder(product: ProductType) async throws -> Result<[String: Any]?, RequestsError> {
            
            guard let url = URL(string:
                                    "https://private-eee242d-ialmogontijo.apiary-mock.com/home")
            else { return .failure(.invalidURL)
            }
            
            let encodedObject = try JSONEncoder().encode(product)
            
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.httpBody = encodedObject
            
            let (data, _) = try await URLSession.shared.data(for: request)
            let message = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            
            return .success(message)
            
        }
            
    func fetchDataWithAlamofire(completion: @escaping ([StoreType]?, Error?) -> Void) {
            AF.request("https://private-eee242d-ialmogontijo.apiary-mock.com/home").responseDecodable(of: [StoreType].self) { response in
                switch response.result {
                case .success(let stores):
                    completion(stores, nil)
                    
                default: break
                }
                
            }
    }
        
        
//       URLSession.shared.dataTask(with: url) {data, _, error in
//           if let error = error {
//               print(error.localizedDescription)
//           }
//           else if let data = data {
//               let storesObjects = try? JSONDecoder().decode([StoreType].self, from: data)
//              print(storesObjects)
//          }
//        }.resume()
        
    }
    

