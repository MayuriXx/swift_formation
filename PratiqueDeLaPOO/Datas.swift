//
//  Datas.swift
//  Datas
//
//  Created by matthieu passerel on 20/08/2021.
//

import Foundation

class Datas {
    
    static let shared = Datas()
    
    let mat = User(name: "Codabee", surname: "Matthieu", imageString: "spider", age: 32)
    let jeje = User(name: "Ducroq", surname: "Jérome", imageString: "joker", age: 25)
    let max = User(name: "Smith", surname: "Maximilian", imageString: "groot", age: 19)
    let clo = User(name: "Vidal", surname: "Clothaire", imageString: "mario", age: 54)
    
    func allUsers() -> [User] {
        var users: [User] = []
        users.append(mat)
        users.append(jeje)
        users.append(max)
        users.append(clo)
        return users
    }
    
}
