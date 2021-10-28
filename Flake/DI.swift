//
//  DI.swift
//  Flake
//
//  Created by Christian Enamorado on 10/26/21.
//

import Foundation


class DI
{
    var API = CatAPI()
}



 protocol API : ObservableObject
{
     var Data: [String: Cat] { get set }
     func load() async
}
