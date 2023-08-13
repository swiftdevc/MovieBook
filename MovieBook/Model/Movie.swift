//
//  Movie.swift
//  MovieBook
//
//  Created by Hasan PC on 13.08.2023.
//

import Foundation

struct Movie : Codable{
    // codable anahtar kelimesi apilerden gelen veriyi işleyip değişkenlere atamamızı sağlar
    // decodanle ve encodable olmak üzere iki yapı içerir
    // veri yollarken kullanılan yapı enocdabledir
    //aslında sadece burdan apiden gelen verileri alıp işleyeceğimiz için sadece decodable anahtar kelimesini kullanabiliriz
    
    let movieTitle : String
    let movieType : String
    let moviePoster : String
    let movieImdbID : String
    let movieYear : String
    
    private enum CodingKeys : String, CodingKey {
        case movieTitle = "Title"
        case movieType = "Typw"
        case moviePoster = "Poster"
        case movieImdbID = "imdbId"
        case movieYear = "Year"
    }
    
    
}

struct RecievedMovies : Codable {
    let movies : [Movie]
    
    enum CodingKeys : String , CodingKey {
        case movies = "Search"
    }
}


