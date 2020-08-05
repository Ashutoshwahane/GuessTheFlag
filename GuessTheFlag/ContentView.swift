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
            ZStack{
                Color.red.edgesIgnoringSafeArea(.all)
                Text("Kya bolte Bantai").foregroundColor(.white)
                    
            }
        }
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
