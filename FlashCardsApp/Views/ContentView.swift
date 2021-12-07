//
//  ContentView.swift
//  FlashCardsApp
//
//  Created by Eunbi Shin on 2021-12-07.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored Properties
    @State var currentCard: Card = listOfCards.randomElement()!
    
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
            
            // Input
            Button(action: {
                currentCard = listOfCards.randomElement()!
            }, label: {
                Text("Another")
            })
                .buttonStyle(.bordered)
            
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
