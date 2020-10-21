//
//  ChildThree.swift
//  learning3
//
//  Created by Larry Mcdowell on 10/20/20.
//

import Foundation
import SwiftUI

struct ChildThree: View {
    @Binding var tb:Bool
    
    var body: some View {
        VStack{
            Toggle("@Binding toggle", isOn: $tb)
                .padding()
            Text("Bottom")
        }
    }
}
