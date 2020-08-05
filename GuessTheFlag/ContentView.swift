//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ashutosh Wahane on 05/08/20.
//  Copyright © 2020 Ashutosh Wahane. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert : Bool = false
    
    var body: some View {

        Button("Show Alert"){
            self.showAlert = true
        }.alert(isPresented: $showAlert){
            Alert(title: Text("hello Ashutosh"), message: Text("Learning SwiftUI by HackingWithSwift"), dismissButton: .default(Text("OK")))
        }
        
        
        }
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
