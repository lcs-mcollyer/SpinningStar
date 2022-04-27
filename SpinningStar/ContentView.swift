//
//  ContentView.swift
//  SpinningStar
//
//  Created by Matthew Collyer on 2022-04-27.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored Properties
    
    @State var xOffset = -100.0
    
    // MARK: control the rotation of the star
    @State var starRotation = 0.0
    
    // MARK: Computed Properties
    var body: some View {
        Image(systemName: "circle.fill")
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.yellow)
            .rotation3DEffect(Angle.degrees(starRotation), axis: (x: 1, y: 1, z: 1))
            .offset(x: xOffset, y: 0)
            
            .animation(Animation
                        .easeInOut(duration: 1.5)
                        .repeatForever(autoreverses: true))
        // 3. trigger the animation on tap
            .onTapGesture{
                // 2. logic that changes the state
                xOffset = 100.0
                // Spin the star twice
                starRotation = 720
                
            }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
