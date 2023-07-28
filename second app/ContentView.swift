//
//  ContentView.swift
//  second app
//
//  Created by Finlay Jennings on 7/26/23.
//

import SwiftUI

struct ContentView: View {

    let funFacts = ["I love to listen to music and my favorite artists are Drake and Taylor Swift", "I love to paint", "I have two dogs named Lulu and Steve", "My favorite food is sushi", "I live in Marin County, CA", "I love STEM and english", "I am a rising senior in high school","my favorite subject is APES","My favorite show is gossip girl","I like to go on hikes", "I play volleyball"]
    
    @State private var currentFunFact = "learn more:)"
    
    var body: some View {
        ZStack {
            Color(.white)
            VStack(alignment: .leading, spacing:20.0) {
            Text("about me!")
                .font(.title)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                Image("aboutme")
                    .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                Text("my name is finlay jennings")
                    .font(.title)
                    .multilineTextAlignment(.leading)
            
                Text("here are some fun facts about me!")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.blue)
                    .padding(.bottom,5)
                Text(currentFunFact)
                    .font(.body)
                    .padding(.horizontal, 20)
                    .multilineTextAlignment(.center)
                Button(action: {
                    let randomIndex = Int.random(in: 0..<funFacts.count)
                    currentFunFact = funFacts[randomIndex]
                }) {
                    HStack {
                        Image("heart")

                    }
                    Text("click here")
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.blue)
                    
    
                }

            HStack {
                Text("")
            }
                    .font(.footnote)
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
