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
    @Published var l: Bool = false
    var Data: [String : Cat] = [:]
   
  
    func load() async
    {
        await Task.sleep(5_000_000_000) 
        //perform async API work here
        l = true
        Data["0"] = Cat(id: 5)

    }
    
    init()
    {
        l = false
        
        Data = [:]
    }
}



struct Cat
{
    var id: Int
    
}
