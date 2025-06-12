//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Gary Hoare on 30/05/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageString = ""
    var body: some View {
        
        Spacer()
        
        VStack {
            
            Image(systemName: imageString)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange )
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
        }
        
        Spacer()
        
        Button("Press Me!") {
            let message1 = "You are Awesome!"
            let message2 = "You are Great!"
            let imageString1 = "hand.thumbsup"
            let imageString2 = "sun.max.fill"
            
            if message == message1 {
                message = message2
                imageString = imageString1
            }   else {
                message = message1
                imageString = imageString2
            }
        }
        .buttonStyle(.borderedProminent)
        .font(.title2)
        .tint(.orange)
        
    }
    
}

#Preview {
    ContentView()
}
