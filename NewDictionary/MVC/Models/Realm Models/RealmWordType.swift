//
//  RealmWordType.swift
//  NewDictionary
//
//  Created by Alexander Parshakov on 11/27/19.
//  Copyright © 2019 Alexander Parshakov. All rights reserved.
//

import Foundation
import RealmSwift

class RealmWordType: Object {
    
    @objc dynamic var id: String = ""
    @objc dynamic var name: String = ""
    
    convenience init(type: TermType) {
        self.init()
        
        self.id = String(type.id)
        self.name = type.name
    }
}
