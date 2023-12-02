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
    static let influential = Color("influential")
    static let lightinfluential = Color("lightinfluential")
    static let master = Color("master")
    static let lightmaster = Color("lightmaster")
    
}

struct ContentView: View {
    @State private var isHorse = true
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Spacer()
                ZStack {
                    Circle()
                        .fill(.white)
                        .stroke(.gray.opacity(0.15), style: StrokeStyle(lineWidth: 10))
                        .frame(width: 300, height: 300)
//                        StarShape()
//                            .stroke(.black, style: StrokeStyle(lineWidth: 1, lineJoin: .miter))
//                            .rotationEffect(Angle(degrees: 17))
//                            .frame(width: 200, height: 200)
                    FiveElementWheelElements()
                        .font(.title.bold())
                }
                Spacer()
                VStack {
                    //REPLACE TOGGLE WITH CUSTOM FLIP TOGGLE WITH CUSTOM IMAGE OF HORSE AND DOG
                    Toggle("\(isHorse ? "🐴" : "🐶🐱")", isOn: $isHorse)
                        .toggleStyle(.button)
                        .font(.system(size: 100))
                        .tint(.white)
                }
                Spacer()
            }
            .padding()
            //.navigationTitle("5 Elements")
        }
    }
}

#Preview {
    ContentView()
}
