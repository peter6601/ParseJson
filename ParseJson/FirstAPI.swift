//
//  FirstAPI.swift
//  ParseJson
//
//  Created by 丁暐哲 on 2016/6/13.
//  Copyright © 2016年 Din. All rights reserved.
//

import Foundation

class FirstAPI {
    
    
    func ConnectAPI(completion:((FirstData) -> Void)){
        let url = "https://secure-retreat-64000.herokuapp.com/req"
        let session = NSURLSession.sharedSession()
        let DataURl = NSURL(string: url)
//        let somedata = FirstData(data: shotData)
        let task = session.dataTaskWithURL(DataURl!){(data,result,error)  in
             print(data)
            do {
                let shotData = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers) as! NSDictionary
                
                let somedata = FirstData(data: shotData)
                
                let priority = DISPATCH_QUEUE_PRIORITY_DEFAULT
                dispatch_async(dispatch_get_global_queue(priority, 0)) {
                    dispatch_async(dispatch_get_main_queue()) {
                        completion(somedata)
                        
                    }
                }
            }catch{
                print("error = \(error)")
            }
   
        }
        task.resume()
    }

}