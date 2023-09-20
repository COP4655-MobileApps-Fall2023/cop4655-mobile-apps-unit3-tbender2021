//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct

struct TracksResponse: Decodable{
    let resultsCount: Int
    let results: [Track]
}
struct Track: Decodable {
    let adult: Bool
    let genre_ids: [Int]
    let id: Int
    let original_language: String
    let original_title: String
    let overview: String
    let popularity: String
    let poster_path: URL
    let release_date: Date
    let title: String
    let video: Bool
    let vote_average: Float
    let vote_count: Int
    

}

// TODO: Pt 1 - Create an extension with a mock tracks static var

extension Track {

    /// An array of mock tracks
    static var mockTracks: [Track]  = [
        Track(adult: false,
              genre_ids:[27,53],
              id: 1008042,
              original_language: "en",
              original_title: "Talk to Me",
              overview: "When a group of friends discover how to conjure spirits using an embalmed hand, they become hooked on the new thrill, until one of them goes too far and unleashes terrifying supernatural forces.",
              popularity: "4755.68",
              poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/lZ2sOCMCcGaPppaXj0Wiv0S7A08.jpg")!,
              release_date: Date(),
              title: "Talk to Me",
              video: false,
              vote_average: 7.2,
              vote_count: 569
               )
    ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
