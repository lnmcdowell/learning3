//
//  ChildTwo.swift
//  learning3
//
//  Created by Larry Mcdowell on 10/17/20.
//

import Foundation
import SwiftUI

struct ChildTwo: View {
    @EnvironmentObject var session:SessionStore
    
    var body: some View {
        VStack{
            HStack{
                Text("Grandchild")
            TextField("Enter new Name", text: Binding(get: {return session.user.displayName!},
                                                      set: {session.user.displayName = $0}))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .border(Color.red, width: 3)
            }.padding()
        }
    }
}
