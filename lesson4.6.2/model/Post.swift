//
//  Post.swift
//  lesson4.6.2
//
//  Created by Javlonbek on 20/01/22.
//

import Foundation

struct Post {
    var name = ""
    var logo = ""
    var time = ""
    var content = ""
    var image = ""
    
    init(name: String, logo: String, time: String, content: String, image: String) {
        self.name = name
        self.logo = logo
        self.time = time
        self.content = content
        self.image = image
    }
}
