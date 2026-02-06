//
//  ContentView.swift
//  iKid
//
//  Created by iguest on 2/5/26.
//

import SwiftUI

struct ContentView: View {
    let goodJokes = [
        ("What did the fish say when he swam into a wall?", "Dam."),
        ("Dull pencils are a joke.", "They're pointless."),
    ]

    let punJokes = [
        ("Why did the golfer bring an extra pair of pants?", "In case he got a hole-in-one."),
        ("Why don't eggs tell jokes?", "Because they'd crack up."),
    ]

    let dadJokes = [
        ("I asked my dog what two minus two equals.", "He didn't say anything."),
        ("What do Alexander the Great and Winnie the Pooh have in common?", "They have the same middle name.")
    ]

    var body: some View {
        TabView {
            
        JokeCategoryView(category: "Good", jokes: goodJokes)
            .tabItem {
                Label("Good", systemImage: "hand.thumbsup.fill")
            }
        
        JokeCategoryView(category: "Pun", jokes: punJokes)
            .tabItem {
                Label("Pun", systemImage: "character.bubble.fill")
            }
        
        JokeCategoryView(category: "Dad", jokes: dadJokes)
            .tabItem {
                Label("Dad", systemImage: "eyeglasses")
            }
            
        }
    }
}


#Preview {
    ContentView()
}
