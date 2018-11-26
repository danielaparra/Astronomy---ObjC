//
//  Camera.swift
//  AstronomyObjC
//
//  Created by Daniela Parra on 11/26/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

import Foundation

class Camera: Codable, Equatable {
    
    static func == (lhs: Camera, rhs: Camera) -> Bool {
        return lhs.id == rhs.id &&
                lhs.name == rhs.name &&
                lhs.roverId == rhs.roverId &&
                lhs.fullName == rhs.fullName
    }
    
    let id: Int
    let name: String
    let roverId: Int
    let fullName: String
}
