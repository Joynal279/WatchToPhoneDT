//
//  Bookmark.swift
//  WatchToPhoneDT
//
//  Created by Joynal Abedin on 24/7/23.
//

import Foundation

struct Bookmark: Codable {
    let title: String
    let date: Date
    let pageURL: URL
    
    func encodeIt() -> Data {
        let data = try! PropertyListEncoder.init().encode(self)
        return data
    }
    
    func decodeIt(_ data: Data) -> Bookmark {
        let bookMark = try! PropertyListDecoder.init().decode(Bookmark.self, from: data)
        return bookMark
    }
}
