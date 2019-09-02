//
//  ForecastService.swift
//  JSONPOST
//
//  Created by Nazim Uddin on 2/9/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import Foundation
import Alamofire

class ForecastService
{
    let forecastBaseURL:URL!
    init() {
        forecastBaseURL = URL(string: "https://httpbin.org/post")
    }
    func postJson(parameter:[String:Any]) {
        let request = Alamofire.request(forecastBaseURL, method: .post, parameters: parameter, encoding: JSONEncoding.default, headers: nil)
        request.responseJSON { (response) in
            switch response.result {
            case .success:
                print(response.result.value)
                break
            case .failure(let error):
                print(error)
            }
        }
    }
}
