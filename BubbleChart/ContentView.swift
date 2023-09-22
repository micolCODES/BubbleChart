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
                VStack{
                    HStack{
                        Spacer()
                        NavigationLink {
                            ElementView(element: "fire")
                        } label: {
                            Text("Fire")
                                .frame(width: 120, height: 120)
                                .font(.title.bold())
                                .foregroundColor(Color.white)
                                .background(RadialGradient(gradient: Gradient(colors: [ElementColor.fire.opacity(0.6), ElementColor.fire, .black]), center: .center, startRadius: 0, endRadius: 120))
                                .clipShape(Circle())
                        }
                        Spacer()
                    }
                    HStack{
                        NavigationLink {
                            ElementView(element: "wood")
                        } label: {
                            Text("Wood")
                                .frame(width: 120, height: 120)
                                .font(.title.bold())
                                .foregroundColor(Color.black)
                                .background(RadialGradient(gradient: Gradient(colors: [ElementColor.wood.opacity(0.4), ElementColor.wood, .black]), center: .center, startRadius: 0, endRadius: 120))
                                .clipShape(Circle())
                        }
                        HStack {
                            Text("\(meridians.count == 12 ? "JSON ✅" : "Cannot read JSON")")
                                .frame(width: 120, height: 120)
                                .font(.headline.bold())
                                .foregroundColor(Color.black)
                                .background(Color.white.gradient)
                                .clipShape(Circle())
                        }
                        NavigationLink {
                            ElementView(element: "earth")
                        } label: {
                            Text("Earth")
                                .frame(width: 120, height: 120)
                                .font(.title.bold())
                                .foregroundColor(Color.black)
                                .background(RadialGradient(gradient: Gradient(colors: [ElementColor.earth.opacity(0.4), ElementColor.earth, .black]), center: .center, startRadius: 0, endRadius: 120))
                                .clipShape(Circle())
                        }
                    }
                    HStack{
                        Spacer()
                        NavigationLink {
                            ElementView(element: "water")
                        } label: {
                            Text("Water")
                                .frame(width: 120, height: 120)
                                .font(.title.bold())
                                .foregroundColor(Color.white)
                                .background(RadialGradient(gradient: Gradient(colors: [ElementColor.water.opacity(0.5), ElementColor.water, .black]), center: .center, startRadius: 0, endRadius: 120))
                                .clipShape(Circle())
                        }
                        NavigationLink {
                            ElementView(element: "metal")
                        } label: {
                            Text("Metal")
                                .frame(width: 120, height: 120)
                                .font(.title.bold())
                                .foregroundColor(Color.black)
                                .background(RadialGradient(gradient: Gradient(colors: [ ElementColor.metal.opacity(0.1),ElementColor.metal, .black]), center: .center, startRadius: 0, endRadius: 120))
                                .clipShape(Circle())
                        }
                        Spacer()
                    }
                }
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
