//
//  User.swift
//  User
//
//  Created by matthieu passerel on 20/08/2021.
//

import UIKit

class User {
    var name: String
    var surname: String
    var imageString: String
    var age: Int
    
    var image: UIImage? {
        return UIImage(named: imageString)
    }
    
    var ageString: String {
        var string = "\(age) an"
        if age > 1 {
            string += "s"
        }
        return string
    }
    
    init(name: String, surname: String, imageString: String, age: Int) {
        self.name = name
        self.surname = surname
        self.imageString = imageString
        self.age = age
    }
    
    func fullName() -> String {
        return surname + " " + name
    }
    
    
}
