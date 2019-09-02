//
//  ViewController.swift
//  JSONPOST
//
//  Created by Nazim Uddin on 2/9/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFieldUsername: UITextField!
    @IBOutlet weak var txtFieldPass: UITextField!
    
    var dic:[String:Any]!
    var id:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func postAction(_ sender: Any) {
        if !txtFieldUsername.text!.isEmpty && !txtFieldPass.text!.isEmpty {
            id += 1
            dic = ["id":id,"username":txtFieldUsername.text!,"password":txtFieldPass.text!]
            let forecastService = ForecastService()
            forecastService.postJson(parameter: dic)
        }
        txtFieldUsername.text = ""
        txtFieldPass.text = ""
    }
    

}

