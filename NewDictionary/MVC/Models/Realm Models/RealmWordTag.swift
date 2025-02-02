//
//  RealmTag.swift
//  NewDictionary
//
//  Created by Alexander Parshakov on 11/4/19.
//  Copyright © 2019 Alexander Parshakov. All rights reserved.
//

import Foundation
import RealmSwift

class RealmWordTag: Object {
    
    @objc dynamic var id: String = ""
    @objc dynamic var name: String = ""
    
    convenience init(tag: Tag) {
        self.init()
        
        self.id = String(tag.id)
        self.name = tag.name
    }
}
