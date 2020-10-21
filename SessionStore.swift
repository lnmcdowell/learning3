//
//  SessionStore.swift
//  learning3
//
//  Created by Larry Mcdowell on 10/17/20.
//

import Foundation
import Combine


class SessionStore:ObservableObject {
    @Published var user = User()
    
    @Published var friend = User()
    
    var anyCancellable1:AnyCancellable? = nil
    var anyCancellable2:AnyCancellable? = nil
    
    init(){
        anyCancellable1 = user.objectWillChange.sink{
            _ in self.objectWillChange.send()
        }
        
        anyCancellable2 = friend.objectWillChange.sink{
            _ in self.objectWillChange.send()
        }
    }
    
}
