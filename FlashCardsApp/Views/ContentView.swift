//
//  ContentView.swift
//  FlashCardsApp
//
//  Created by Eunbi Shin on 2021-12-07.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored Properties
    // This is the card we are currently quizzing on
    @State var currentCard: Card = listOfCards.randomElement()!
    
    // This controls whether the answer is visible
    @State var isAnswerShowing = false
    
    // MARK: Computed Properties
    var body: some View {
        VStack(spacing: 25) {
            
            // Output
            Text(currentCard.question)
                .font(.largeTitle)
            
            // Input
            Button(action: {
                print("Button was pressed")
            }, label: {
                Text("Check")
            })
                .buttonStyle(.bordered)
            
            // Output
            Text(currentCard.answer)
                .font(.title)
                // Condition            True  False
                .opacity(isAnswerShowing ? 1.0 : 0.0)
            
            // Input
            Button(action: {
                currentCard = listOfCards.randomElement()!
            }, label: {
                Text("Another")
            })
                .buttonStyle(.bordered)
            // Condition            True  False
            .opacity(isAnswerShowing ? 1.0 : 0.0)
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Flash Cards")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
