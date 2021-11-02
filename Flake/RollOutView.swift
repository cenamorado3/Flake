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
                    return api.Data["0"]!
                }.padding(.leading)
                
                CatSplashView {
                    return api.Data["1"]!
                }.padding(.trailing)
            }
            HStack{
                CatSplashView {
                    return api.Data["2"]!
                }.padding(.leading)
                CatSplashView {
                    return api.Data["3"]!
                }.padding(.trailing)
            }
            HStack{
                CatSplashView {
                    return api.Data["4"]!
                }.padding(.leading)
                
                CatSplashView {
                    return api.Data["5"]!
                }.padding(.trailing)
       
            }

        }.offset(y: -10)
    }

    init()
    {
        viewProfile = false
    }
 
}

struct RollOutView_Previews: PreviewProvider {
    static var previews: some View {
        RollOutView()
    }
}
