//
//  ContentView.swift
//  BubbleChart
//
//  Created by Micol on 20.09.23.
//

import SwiftUI

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
                                .background(RadialGradient(gradient: Gradient(colors: [.red.opacity(0.4), .red.opacity(0.9), .black]), center: .center, startRadius: 0, endRadius: 120))
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
                                .background(RadialGradient(gradient: Gradient(colors: [.green.opacity(0.4), .green.opacity(0.9), .black]), center: .center, startRadius: 0, endRadius: 120))
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
                                .background(RadialGradient(gradient: Gradient(colors: [.orange.opacity(0.4), .orange.opacity(0.9), .black]), center: .center, startRadius: 0, endRadius: 120))
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
                                .background(RadialGradient(gradient: Gradient(colors: [.black.opacity(0.5), .black.opacity(1)]), center: .center, startRadius: 0, endRadius: 120))
                                .clipShape(Circle())
                        }
                        NavigationLink {
                            ElementView(element: "metal")
                        } label: {
                            Text("Metal")
                                .frame(width: 120, height: 120)
                                .font(.title.bold())
                                .foregroundColor(Color.black)
                                .background(RadialGradient(gradient: Gradient(colors: [.white, .gray.opacity(0.3), .black]), center: .center, startRadius: 0, endRadius: 120))
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
