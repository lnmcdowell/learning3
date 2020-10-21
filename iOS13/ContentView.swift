//
//  ContentView.swift
//  iOS13
//
//  Created by Larry Mcdowell on 10/17/20.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var session:SessionStore
    @State var toggle:Bool = false
    var body: some View {
        VStack{
            Text("Example of sharing EnvironmentObject to child views with bi-directional modification and update")
                .padding(EdgeInsets(top: 10, leading: 50, bottom: 10, trailing: 50))
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: Color.black, radius: 10, x: 5, y: 5)
            TextField("Hello, world!", text: Binding(get: {return session.user.displayName!}, set: {session.user.displayName = $0}))
            .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("passed toggle to @Binding is :\(toggle ? "true" : "false")")
        ChildOne()
            Divider()
        ChildTwo()
            Divider()
        ChildThree(tb:$toggle)
            Text("End")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
