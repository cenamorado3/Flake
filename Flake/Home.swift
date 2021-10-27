//
//  Home.swift
//  Flake
//
//  Created by Christian Enamorado on 10/26/21.
//

import SwiftUI
var auth = false;
struct Home: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            if(auth)
            {
                Text("Hello, World?").foregroundColor(.mint)
            }
            else{
                Text("Wrong Password!").foregroundColor(.mint)
            }
        }
    }
    
    init(closure: () -> Bool)
    {
        auth = closure()
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(closure: {
            return true
        })
    }
}
