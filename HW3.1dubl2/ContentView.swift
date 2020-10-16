//
//  ContentView.swift
//  HW3.1dubl2
//
//  Created by Инна Степанова on 15.10.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttomName = "START"
    @State private var opacityRed = 0.3
    @State private var opacityOrange = 0.3
    @State private var opacityGreen = 0.3
    
    enum CurrentLight {
        case red
        case orange
        case green
    }
    @State private var currentLight : CurrentLight = .red
    
        func ButtonPressed() {
            buttomName = "NEXT"
            switch currentLight {
            case .red:
                opacityRed = 1.0
                opacityGreen = 0.3
                currentLight = .orange
            case .orange:
                opacityOrange = 1.0
                opacityRed = 0.3
                currentLight = .green
            case .green:
                opacityGreen = 1.0
                opacityOrange = 0.3
                currentLight = .red
            }
            
        }
    
    var body: some View {
        VStack {
            Color(.red)
                .opacity(opacityRed)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 5)
            
            Color(.orange)
                .opacity(opacityOrange)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 5)
            
            Color(.green)
                .opacity(opacityGreen)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 5)
        
            Button(action: {ButtonPressed()}) {
                Text(buttomName)
            }
            .foregroundColor(Color.white)
            .frame(width: 150, height: 40)
            .background(Color.blue)
            .cornerRadius(5)
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
