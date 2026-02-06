//
//  JokeCategoryView.swift
//  iKid
//
//  Created by iguest on 2/5/26.
//

import SwiftUI

struct JokeCategoryView: View {
    let category: String
    let jokes: [(question: String, punchline: String)]
    
    @State private var showPunchline = false
    @State private var currentJokeIndex = 0
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(showPunchline ? jokes[currentJokeIndex].punchline : jokes[currentJokeIndex].question)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding(25)
            
            Spacer()
            
            HStack {
                Spacer()
                
                Button("Next") {
                    if showPunchline {
                        currentJokeIndex += 1
                        
                        if currentJokeIndex >= jokes.count {
                            currentJokeIndex = 0
                        }
                        
                        showPunchline = false
                    } else {
                        showPunchline = true
                    }
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
        }
        .onAppear{
            currentJokeIndex = 0
            showPunchline = false
        }
    }
}

#Preview {
    ContentView()
}
