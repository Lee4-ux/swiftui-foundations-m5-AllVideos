//
//  Models.swift
//  AllVideos
//
//  Created by LJ Jacobs on 22/06/2021.
//

import Foundation

struct Video: Decodable, Identifiable {
    
    var id: Int
    var title: String
    var url: String
    
}
