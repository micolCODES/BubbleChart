//
//  ContentView.swift
//  BubbleChart
//
//  Created by Micol on 20.09.23.
//

import SwiftUI

struct ElementColor{
    static let wood = Color("wood")
    static let fire = Color("fire")
    static let earth = Color("earth")
    static let metal = Color("metal")
    static let water = Color("water")
    
}

struct ContentView: View {
    
    let meridians: [String: Meridian] = Bundle.main.decode("meridiansNacupoints.json")
    
    var body: some View {
        NavigationView {
            VStack {
                HStack{}
                FiveElementWheel(wood: "Wood", fire: "Fire", earth: "Earth", metal: "Metal", water: "Water", yin: true, circleSize: 120)
                HStack{}
            }
            .padding()
            .navigationTitle("5 Elements")
        }
    }
    
}

#Preview {
    ContentView()
}
