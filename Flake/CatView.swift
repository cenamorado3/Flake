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
            Rectangle().fill(.mint)
            Text("Hello, \(cat.id)")
          
        }.ignoresSafeArea()
        
    }
    
    
    init(Cat: () -> Cat)
    {
        cat = Cat()
    }
}

struct CatView_Previews: PreviewProvider {
    static var previews: some View {
        CatView(Cat: {return Cat(id: 10)})
    }
}



