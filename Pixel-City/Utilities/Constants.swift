//
//  Constants.swift
//  Pixel-City
//
//  Created by Ehab Eletreby on 6/6/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import Foundation

let apiKey = "cc0d3e47bd03ccc20a8027d57fd3653f"

func flickrUrl(forApiKey Key:String, withAnnotation annotation:DroppablePin, andNumberOfPhotos number:Int) -> String {
    let url = "https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
//    print(url)
    return url
}

