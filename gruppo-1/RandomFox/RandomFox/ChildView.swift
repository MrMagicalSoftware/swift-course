//
//  ChildView.swift
//  RandomFox
//
//  Created by mr on 27/09/23.
//

import SwiftUI

struct ChildView: View {
    
    @Binding var data: String // arrivano dei dati dal padre....
    //@Binding var paperino : Any
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Text(data)
    }
    
}


