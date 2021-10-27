//
//  ContentView.swift
//  Flake
//
//  Created by Christian Enamorado on 10/26/21.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var pw: String = ""
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue.ignoresSafeArea()
                VStack{
                    HStack{
                        TextField(
                            "User name",
                            text: $username
                        )
                        .background(.thinMaterial)
                        .scenePadding()
                        .multilineTextAlignment(.center)
                        
                        SecureField(
                            "Password",
                            text: $pw
                        )
                        .background(.thinMaterial)
                        .scenePadding()
                        .multilineTextAlignment(.center)
                    }
                    NavigationLink("Login", destination: Home(closure: {
                        if(username == "A" && pw == "1")
                        {
                            return true
                        }
                        return false

                    }))
                    .foregroundColor(.mint)
                }
            }
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
