//
//  LoginStruct.swift
//  News_App_iOS
//
//  Created by Nagarushyanth Tummala on 4/30/22.
//

import Foundation

struct Users
{
    let id:Int
    let username:String
    let password:String
}



var user1 = Users(id: 1, username: "xxxxx",password: "1234")
var user2 = Users(id: 2, username: "yyyyy",password: "124")
var user3 = Users(id: 3, username: "zzzzz",password: "123")

let users = [user1,user2,user3]
