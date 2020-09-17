//
//  Members.swift
//  GumballBook
//
//  Created by testinium on 16.09.2020.
//  Copyright © 2020 testinium. All rights reserved.
//

import Foundation
import UIKit

class Members{
    
    var gumbalMemberName : String
    var gumbalMemberImage : UIImage
    var gumbalMemberOccupation : String
    var gumbalMemberSpecies : String
    var gumbalMemberAge : String
    
    
    init(name : String, image : UIImage, occupation : String, species : String, age : String) {
        gumbalMemberName = name
        gumbalMemberImage = image
        gumbalMemberOccupation = occupation
        gumbalMemberSpecies = species
        gumbalMemberAge = age
    }
    
}
