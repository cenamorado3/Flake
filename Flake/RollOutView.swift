//
//  RollOutView.swift
//  Flake
//
//  Created by Christian Enamorado on 10/27/21.
//

import SwiftUI

struct RollOutView: View {
    @State private var viewProfile : Bool
    @ObservedObject var api = container.API
    var body: some View {
        VStack{
            HStack{//cats go here
                CatSplashView {
                    return Cat(id: 1)//api.Data["0"]!
                }.padding(.leading)
                CatSplashView {
                    return Cat(id: 2)//api.Data["0"]!
                }.padding(.trailing)
            }
            HStack{
                CatSplashView {
                    return Cat(id: 3)//api.Data["0"]!
                }.padding(.leading)
                CatSplashView {
                    return Cat(id: 4)//api.Data["0"]!
                }.padding(.trailing)
            }
            HStack{
                CatSplashView {
                    return Cat(id: 5)//api.Data["0"]!
                }.padding(.leading)
                
                CatSplashView {
                    return Cat(id: 6)//api.Data["0"]!
                }.padding(.trailing)
       
            }

        }.offset(y: -10)
    }

    init()
    {
        print(container.API.Data)
        viewProfile = false
    }
 
}

struct RollOutView_Previews: PreviewProvider {
    static var previews: some View {
        RollOutView()
    }
}
