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
    @State private var l: Bool = false
    var body: some View {
        if(l)//something out UI changed from background threads -> is this a pthread?
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
                await Task.sleep(2_000_000_000)
                print(api.Data)
                l = true
            }
            
        }
    }
    
    
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
