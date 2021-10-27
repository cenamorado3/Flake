//
//  WrongPasswordView.swift
//  Flake
//
//  Created by Christian Enamorado on 10/27/21.
//

import SwiftUI

struct WrongPasswordView: View {
    @State private var username: String = ""
    @State private var pw: String = ""
    var body: some View {
        NavigationView{
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
                        guard username == "A" && pw == "*" else
                        {
                            return false
                        }
                        return true

                    }))
                    .foregroundColor(.mint)
                }
            }
        
    }
}

struct WrongPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        WrongPasswordView()
    }
}
