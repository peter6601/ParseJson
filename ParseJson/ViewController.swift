//
//  ViewController.swift
//  ParseJson
//
//  Created by 丁暐哲 on 2016/6/11.
//  Copyright © 2016年 Din. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var address: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let aSingleAPI = FirstAPI()
        aSingleAPI.ConnectAPI(didLoadShot)
    }
    
    func didLoadShot(data: FirstData) {
         name.text = data.name
         age.text = data.age
        address.text = data.address
    }

}

