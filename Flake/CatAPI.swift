//
//  CatAPI.swift
//  Flake
//
//  Created by Christian Enamorado on 10/28/21.
//

import Foundation
import SwiftUI


class CatAPI : API
{
    //this was moved to a @State on the page since we can not publish from a background thread.
    //@Published var l: Bool = false
    var Data: [String : Cat] = [:]
   
  
    func load() async
    {
        for i in 0...6
        {
            let url = "https://cataas.com/cat?json=true"
            var request = URLRequest(url: URL(string: url)!)
            request.httpMethod = "GET"
            let session = URLSession.shared
            session.dataTask(with: request, completionHandler: { data, response, error -> Void in
                    do {
                        let json = try JSONSerialization.jsonObject(with: data!)
                        let c =  json as! Dictionary<String, AnyObject>
                        let catID = c["id"] as! String
                        self.GetImage(endpoint: catID, index: i)
                    } catch {
                         print("error")
                     }
            }).resume()
            await Task.sleep(500)
        }
        print(Data)
    }
        
    func GetImage(endpoint: String, index: Int)
    {
        let url = "https://cataas.com/cat/\(endpoint)"
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = "GET"
        let session = URLSession.shared
        session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            self.Data[String(index)] = Cat(id: index, imageBytes: data!, Etag: endpoint)
            }).resume()
    }
    init()
    {
        Data = [:]
    }
}



struct Cat
{
    var id: Int
    var imageBytes: Data?
    var Etag: String?
}


struct CatResponse : Codable
{
    var id: String
    var created_at: String?
    var tags: Array<String>?
}
