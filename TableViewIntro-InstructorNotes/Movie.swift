//
//  Movie.swift
//  TableViewIntro-InstructorNotes
//
//  Created by C4Q  on 10/27/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

public class Movie: CustomStringConvertible {
    var name: String
    var year: Int
    var genre: String
    var cast: [String]
    var locations: [String]
    public var description: String
    init(name: String, year: Int, genre: String, cast: [String], locations: [String], description: String) {
        self.name = name
        self.year = year
        self.genre = genre
        self.cast = cast
        self.locations = locations
        self.description = description
    }
}


