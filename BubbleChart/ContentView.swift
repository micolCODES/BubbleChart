//
//  ContentView.swift
//  BubbleChart
//
//  Created by Micol on 20.09.23.
//

import SwiftUI

struct ElementColor{
    static let wood = Color("wood")
    static let lightwood = Color("lightwood")
    static let fire = Color("fire")
    static let lightfire = Color("lightfire")
    static let earth = Color("earth")
    static let lightearth = Color("lightearth")
    static let metal = Color("metal")
    static let lightmetal = Color("lightmetal")
    static let water = Color("water")
    static let lightwater = Color("lightwater")
    
}

struct ContentView: View {
    
    let meridians: [String: Meridian] = Bundle.main.decode("meridiansNacupoints.json")
    
    var body: some View {
        NavigationStack {
            VStack {
                
                HStack{}
                FiveElementWheelElements()
                    .font(.title.bold())
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
