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
        
        
        // Linear Gradient
//        LinearGradient.init(gradient: Gradient(colors:[.white,.black]), startPoint: .bottom, endPoint: .top).edgesIgnoringSafeArea(.all)
        
        
        // RadialGradient
//        RadialGradient.init(gradient: Gradient.init(colors: [.green, .black]), center: .center, startRadius: 20, endRadius: 200).edgesIgnoringSafeArea(.all)
        
        AngularGradient.init(gradient: Gradient.init(colors: [.red, .green, .blue, .yellow, .purple, .red]), center: .center).edgesIgnoringSafeArea(.all)
        
        
        }
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
