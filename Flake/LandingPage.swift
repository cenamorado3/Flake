//
//  LandingPage.swift
//  Flake
//
//  Created by Christian Enamorado on 10/27/21.
//

import SwiftUI
var loaded = false
struct LandingPage: View {
    @ObservedObject var api = container.API
    var body: some View {
        if(api.l)
        {
            RollOutView()
        }
        else
        {
            Text("Hello \(user)! We're getting ready for you.").foregroundColor(.mint)
            .offset(y: -50)
            .animation(.spring(response: 0.8, dampingFraction: 0.001).repeatForever())
            .task {
                await api.load()
            }
            
        }
    }
    
    
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
