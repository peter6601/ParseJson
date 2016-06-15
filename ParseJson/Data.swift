//
//  Data.swift
//  ParseJson
//
//  Created by 丁暐哲 on 2016/6/13.
//  Copyright © 2016年 Din. All rights reserved.
//

import Foundation

class FirstData {
    
    var name:String
    var age:String
    var address:String
    
    init(data: NSDictionary){
        self.name = data["name"] as? String ?? ""
        self.address = data["adress"] as? String ?? ""
        self.age = data["age"] as? String ?? ""
    }
    
}