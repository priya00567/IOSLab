//
//  PhotoInfo.swift
//  SpacePhoto
//
//  Created by Student on 16/04/24.
//

import UIKit
struct PhotoInfo:Codable
{
    var title :String
    var url :String
    var copyright:String
    
    var description:String
    
    enum CodingKeys :String,CodingKey
    {
        case title
        case url
        case copyright
        
        case description = "explanation"
    }
}
