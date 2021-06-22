//
//  ContentModel.swift
//  AllVideos
//
//  Created by LJ Jacobs on 22/06/2021.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var videos = [Video]()
    
    init() {
        
        getLocalData()
        
    }
    
    func getLocalData() {
        
        // Parse the local jsonfile
        // Get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "Data", withExtension: "json")
                
        do {
            // Read the file into a data object
            let jsonData = try Data(contentsOf: jsonUrl!)
                    
            // Try to decode the json into an array of modules
            let jsonDecoder = JSONDecoder()
            let videos = try jsonDecoder.decode([Video].self, from: jsonData)
            // Assign the parsed videos to videos property; this is essentially assigning what we pass out in "let videos = try ...." into published var modules. Since this is a published property, whatever viewcode is using this property and listening to it, it will know that we've just added videos to it and it will update that view accordingly.
                    self.videos = videos
                }
        catch {
            // TODO log error
            print("Couldn't parse local data")
                }
    }
}
