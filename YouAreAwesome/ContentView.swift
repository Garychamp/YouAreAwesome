//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Gary Hoare on 30/05/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I Am A Programmer!"
    var body: some View {
        
      Spacer()
        
        VStack {
    
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange )
                .frame(width: 200, height: 200)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
        }
        
        Spacer()
        
        HStack {
            
            Button("Awesome") {
                message = "Awesome!"
            }
            
            Button("Great") {
                message = "Great!"
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
