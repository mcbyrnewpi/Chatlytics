//
//  MessageService.swift
//  Chatlytics
//
//  Created by Matthew Byrne on 2/27/18.
//  Copyright © 2018 Matthew Byrne. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService {
    
    static let instance = MessageService()
    
    var channels = [Channel]()
    var selectedChannel : Channel?
    
    
    // create function to create web request, hit the api, then return the channels
    func findAllChannel(completion: @escaping CompletionHandler) {
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            
            if response.result.error == nil {
                
                // set the response data to a constant
                guard let data = response.data else { return }
                if let json = JSON(data: data).array {
                    
                    // for each item in the returned array, grab name/description/id
                    // then create new channel object and add it to the channels array
                    for item in json {
                        let name = item["name"].stringValue
                        let channelDescription = item["description"].stringValue
                        let id = item["_id"].stringValue
                        let channel = Channel(channelTitle: name, channelDescription: channelDescription, id: id)
                        self.channels.append(channel)
                    }
                    NotificationCenter.default.post(name: NOTIF_CHANNELS_LOADED, object: nil)
                    completion(true)
                }
                
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }

    }
    
    func clearChannels() {
        channels.removeAll()
    }
    
    
}

