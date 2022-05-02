//
//  Users.swift
//  News_App_iOS
//
//  Created by student on 5/1/22.
//

class Users{
    
    var uniqueId: String?
    var firstName: String?
    var lastName: String?
    var universityEmailId: String?
    var password: String?
    
    init(uniqueId: String?, firstName: String?, lastName: String?, universityEmailId: String?, password: String?){
        self.uniqueId = uniqueId
        self.firstName = firstName
        self.lastName = lastName
        self.universityEmailId = universityEmailId
        self.password = password
    }
}
