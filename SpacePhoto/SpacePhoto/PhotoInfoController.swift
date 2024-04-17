//
//  PhotoInfoController.swift
//  SpacePhoto
//
//  Created by Student on 16/04/24.
//

import Foundation

class photoInfoController{
    enum PhotoInfoError:Error,LocalizedError{
        case itemNotFound
    }
    func fetchData() async throws -> PhotoInfo{


    var urlComponent = URLComponents(string: "https://api.nasa.gov/planetary/apod")!
        var queryItems = ["api_key":"zDMYFX6KrOJfuWwQ2RLYydZ15ih55XQjScZKFaty",
                          "date":"2024-04-15"]
    urlComponent.queryItems = queryItems.map{URLQueryItem(name: $0.key, value: $0.value)}
        let (data , response ) = try await  URLSession.shared.data(from:urlComponent.url!)
         let jsonDecoder = JSONDecoder()
        guard let httpResponse = response as? HTTPURLResponse,httpResponse.statusCode == 200 else {
            throw PhotoInfoError.itemNotFound
        }
            let photoInfoJSON = try? jsonDecoder.decode(PhotoInfo.self,from: data)
        return photoInfoJSON!
    //        {
    //            print(photoInfoJSON)
    //        }
    //        else{
    //            /// Error Handling
    //        }
             }
    func fetchImage(from photoInfo: PhotoInfo)async throws -> UIImage{
        
    }
    
}
