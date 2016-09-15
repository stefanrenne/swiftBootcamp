//
//  Movie.swift
//  MovieSearcher
//
//  Created by Ruud Puts on 14/09/16.
//  Copyright © 2016 Ruud Puts. All rights reserved.
//

import Foundation

class Movie {
    dynamic var id = 0
    dynamic var title = ""
    dynamic var year = ""
    dynamic var plot = ""
    
    init(data: [String: Any]) {
        
    }
    
}

extension String {
    
    var length: Int {
        get {
            return self.utf16.count
        }
    }
    
    subscript (r: Range<Int>) -> String {
        guard self.length >= r.upperBound else {
            return self
        }
        
        let start = characters.index(startIndex, offsetBy: r.lowerBound)
        let end = characters.index(start, offsetBy: r.upperBound - r.lowerBound)
        
        return self[Range(start ..< end)]
    }
}
