//
//  Home.swift
//  Flake
//
//  Created by Christian Enamorado on 10/26/21.
//

import SwiftUI
var auth = false
var user = ""
struct Home: View {
    @State private var animate: CGFloat = .zero
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            
            if(auth)
            {

                    LandingPage()
                
            }
            else{
                Button(
                    action: {
                        presentationMode.wrappedValue.dismiss()
                        animate += 100.0
                    },
                       label: {
                           Text("Are you really \(user)?").foregroundColor(.mint)
                               
                    }).offset(y: 30)
                
                    .animation(.spring(response: 0.2, dampingFraction: 0.2).repeatCount(1))
                    //, value: animate) this would work but it doesnt, ill worry about it later since it works without value using a deprecated function in iOS 15
            }
        }
    }
    
    init(_user: String, closure: () -> Bool)
    {
        auth = closure()
        user = _user
    }

}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(_user: "TEST USER",closure: {
            return true
        })
    }
}
