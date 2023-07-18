//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Матвей Авдеев on 18.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonTitle = "Start"
    @State private var redCircleAlpha = 0.5
    @State private var yellowCircleAlpha = 0.5
    @State private var greenCircleAlpha = 0.5
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 25) {
                CircleView(alpha: redCircleAlpha, color: .red)
                CircleView(alpha: yellowCircleAlpha, color: .yellow)
                CircleView(alpha: greenCircleAlpha, color: .green)
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.black)
                        .frame(width: 150, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(
                            Color.purple,
                            lineWidth: 3)
                        )
                        .shadow(color: .purple, radius: 10)
                    Button(action: switchButtonPressed ) {
                        Text(buttonTitle)
                            .font(.largeTitle)
                            .foregroundColor(.purple)
                        
                    }
                    
                }
                Spacer()
            }
            
            
            .padding()
        }
        
    }
    private func switchButtonPressed() {
        buttonTitle = "Next"
        
        if redCircleAlpha == 0.5 && yellowCircleAlpha == 0.5 && greenCircleAlpha == 0.5 {
            redCircleAlpha = 1
        } else if redCircleAlpha == 1 {
            redCircleAlpha = 0.5
            yellowCircleAlpha = 1
        } else if yellowCircleAlpha == 1 {
            yellowCircleAlpha = 0.5
            greenCircleAlpha = 1
        } else if greenCircleAlpha == 1 {
            greenCircleAlpha = 0.5
            redCircleAlpha = 1
        }

        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
