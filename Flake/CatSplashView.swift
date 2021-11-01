//
//  CatSplashView.swift
//  Flake
//
//  Created by Christian Enamorado on 10/31/21.
//

import SwiftUI

struct CatSplashView: View {
    var cat : Cat
    @State private var viewProfile : Bool
    var body: some View {
        ZStack{
            Rectangle().fill(.mint)
            //this button  holds great comedic value
            Button("     \n\n\n\n\n                                                    \n\n\n     \n\n") {
                viewProfile = true;
            }
            .sheet(isPresented: $viewProfile) {
            } content: {
                CatView {
                    return cat
                }
            }
        }
    }
    
    
    init(Cat: () -> Cat)
    {
        cat = Cat()
        viewProfile = false
    }
}

struct CatSplashView_Previews: PreviewProvider {
    static var previews: some View {
        CatSplashView(Cat: {return Cat(id: 10)})
    }
}



