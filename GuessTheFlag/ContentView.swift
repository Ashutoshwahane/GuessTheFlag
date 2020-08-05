//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ashutosh Wahane on 05/08/20.
//  Copyright © 2020 Ashutosh Wahane. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20){
            Text("Hello, World!")
            Text("Hello Ashutosh")
            Text("Hello Willskhalifa")
            HStack{
                Text("My name is")
                Text("Goldy")
            }
            ZStack{
                Text("The First one")
                Text("The Second one")
                Text("It is used for depth")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
