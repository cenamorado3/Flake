//
//  LandingPage.swift
//  Flake
//
//  Created by Christian Enamorado on 10/27/21.
//

import SwiftUI
var loaded = false
struct LandingPage: View {
    var body: some View {
        if(!loaded)
        {
            Text("Hello \(user)! We're getting ready for you.").foregroundColor(.mint)
                .offset()
                .animation(.spring(response: 0.8, dampingFraction: 0.001).repeatForever())
                .task {
                    await Task.sleep(2000)
                    loaded = true
                    return
                }
        }
        if(loaded)
        {
            Text("We're ready, let's go!")
        }
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
