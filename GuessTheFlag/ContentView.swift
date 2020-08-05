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
//        Button("Tap Me1!!!"){
//            Text("Button was Tapped")
//        }
        
        Button(action : {
            print("Button was Tapped!!1")
        }){
//            Text("Tap me ")
            
            HStack{
                Image(systemName: "pencil").renderingMode(.original)
                Text("Edit")
            }
        }
        }
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
