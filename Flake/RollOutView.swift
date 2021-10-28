//
//  RollOutView.swift
//  Flake
//
//  Created by Christian Enamorado on 10/27/21.
//

import SwiftUI

struct RollOutView: View {
    @ObservedObject var api = container.API
    var body: some View {
        VStack{
            HStack{//cats go here
                Rectangle().fill(.mint).padding(.leading)
                Rectangle().fill(.mint).padding(.trailing)
            }
            HStack{
                Rectangle().fill(.mint).padding(.leading)
                Rectangle().fill(.mint).padding(.trailing)
            }
            HStack{
                Rectangle().fill(.mint).padding(.leading)
                Rectangle().fill(.mint).padding(.trailing)
                
            }
        }.offset(y: -10)
    }
    
    init()
    {
        print(container.API.Data)
    }
 
}

struct RollOutView_Previews: PreviewProvider {
    static var previews: some View {
        RollOutView()
    }
}
