//
//  ContentView.swift
//  Animations
//
//  Created by Marcus Benoit on 27.03.24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    @State private var animationAmount2 = 1.0
    @State private var animationAmount3 = 0.0
    
    @State private var enabled = false
    
    var body: some View {
        //print(animationAmount2)
        
        Spacer()
        
        /*
        Button("Tap me!") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.easeInOut(duration: 2)
            .repeatForever(autoreverses: true),
        value: animationAmount)
        
        Spacer()
        
        Button("Tap me!") {
            // animationAmount += 1
        }
        .padding(50)
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(.circle)
        .overlay(
            Circle()
                .stroke(.blue)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(.easeInOut(duration: 1)
                    .repeatForever(autoreverses: false),
                value: animationAmount)
        )
        .onAppear {
            animationAmount = 2
        }
        
        Spacer()
         */
        
        // Animated Bindings
        /* 
         SwiftUI is examing the state before the binding changes and after the binding has changed and animated what happens between these two changes.
         
         In the following the animation modifier is attached directly onto the value and not the view!
         
        
        return VStack {
            Stepper("Scale amount", value: $animationAmount2.animation(
                .easeInOut(duration: 1)
                .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            
            Spacer()
            
            Button("Tap me!!") {
                animationAmount2 += 1
            }
            .padding(40)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount2)
         
         */
        
        /*
        Button("Tap me") {
//            withAnimation {
//                animationAmount3 += -360
//            }
            withAnimation(.spring(duration: 1, bounce: 0.3)) {
                animationAmount3 += -360
            }
        }
        .padding(40)
        .background(.black)
        .foregroundColor(.yellow)
        .font(.headline.bold())
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount3),
            axis: (x: 1, y: 0, z: 1)
        )
            */
        
        Button("Tap me Bitch!") {
            enabled.toggle()
        }
        .background(enabled ? .blue : .black)
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .yellow)
        .foregroundColor(enabled ? .white : .yellow)
        .animation(.default, value: enabled)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(.spring(duration: 1, bounce: 0.6), value: enabled)
        
        Spacer()
        
        // in order to disable animations you can pass 'nil' into your modifier.
        
        Button("Tap me Bitch!") {
            enabled.toggle()
        }
        .background(enabled ? .blue : .black)
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .yellow)
        .foregroundColor(enabled ? .white : .yellow)
        .animation(nil, value: enabled)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(.spring(duration: 1, bounce: 0.6), value: enabled)
        
        Spacer()
    }
}

#Preview {
    ContentView()
}
