//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ashutosh Wahane on 05/08/20.
//  Copyright © 2020 Ashutosh Wahane. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countries = ["India","Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showTitle = ""
    @State private var showingScore = false
    @State private var score = 0
    
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.black, .white]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 40){
                VStack{
                    Text("Tap to Flag Off")
                        .foregroundColor(.white)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                
                    ForEach(0 ..< 4) {number in
                        Button(action:{
                            self.flagTapped(number)
                        }){
                            Image(self.countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .overlay(Capsule()
                                    .stroke(Color.black, lineWidth: 1))
                                .shadow(color: .black, radius: 2)
                        }
                    }
                    Spacer()
            
                    Text("Your Score is : \(score)")
                        .font(.title)
                        .foregroundColor(.black)
                    
                }
            }
        }
        .alert(isPresented: $showingScore){
            Alert(title: Text(showTitle), message: Text("Your Score is \(score)"), dismissButton: .default(Text("Continue")){
                self.askQuestion()
                })
        }
        
    }
    
    func flagTapped(_ number: Int){
        if (number == correctAnswer) {
            showTitle = "Correct"
            score += 1
        }else{
            showTitle = "Wrong"
            score -= 1
        }
        showingScore = true
    }
    
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
