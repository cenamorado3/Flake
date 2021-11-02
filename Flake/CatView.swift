//
//  CatView.swift
//  Flake
//
//  Created by Christian Enamorado on 10/31/21.
//

import SwiftUI

struct CatView: View {
    var cat : Cat
    var body: some View {
        ZStack{
           Rectangle().fill(.blue)
            VStack
            {
                
                Link(destination: URL(string: "https://cataas.com/cat/\(cat.Etag!)")!) {
                    Text("You can find me at, \nhttps://cataas.com/cat/\(cat.Etag!)!").foregroundColor(.mint)
                }
                Image(uiImage: UIImage(data: cat.imageBytes!)!)
            }
          
        }.ignoresSafeArea()
        
    }
    
    
    init(Cat: () -> Cat)
    {
        cat = Cat()
    }
}

