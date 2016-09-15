//
//  MovieApi.swift
//  MovieSearcher
//
//  Created by Ruud Puts on 14/09/16.
//  Copyright © 2016 Ruud Puts. All rights reserved.
//

import UIKit
import Alamofire

class MovieApi {

    class func search(_ searchText: String, completion: @escaping ([Movie]) -> (Void)) {
        let escapedSearchText = searchText.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? searchText
        let url = "https://api.themoviedb.org/3/search/movie?api_key=f1849f09c4fccb34a2e5fafc5decf31f&query=" + escapedSearchText
        
        Alamofire.request(url).responseJSON { handler in
            guard let responseJSON = handler.result.value as? [String: Any],
                let searchResults = responseJSON["results"] as? [[String: Any]] else {
                completion([])
                return
            }
            
            let movies = parse(searchResults)
            
            completion(movies)
        }
    }
    
    class func parse(_ moviesData: [[String: Any]]) -> [Movie] {
        var movies = [Movie]()
        
        for data in moviesData {
            movies.append(Movie(data: data))
        }
        
        return movies
    }
    
}
