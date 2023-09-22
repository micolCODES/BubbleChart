//
//  FiveElementWheel.swift
//  BubbleChart
//
//  Created by Micol on 22.09.23.
//

import Foundation
import SwiftUI

struct FiveElementWheel: View {
    var wood: String
    var fire: String
    var earth: String
    var metal: String
    var water: String
    var yin: Bool
    var circleSize: CGFloat
    
    
    let meridians: [String: Meridian] = Bundle.main.decode("meridiansNacupoints.json")
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                NavigationLink {
                    ElementView(element: "fire")
                } label: {
                    Text(fire)
                        .frame(width: circleSize, height: circleSize)
                        .font(.title.bold())
                        .foregroundColor(Color.white)
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.fire.opacity(0.6), ElementColor.fire, .black]), center: .center, startRadius: 0, endRadius: circleSize))
                        .clipShape(Circle())
                }
                Spacer()
            }
            HStack{
                NavigationLink {
                    ElementView(element: "wood")
                } label: {
                    Text(wood)
                        .frame(width: circleSize, height: circleSize)
                        .font(.title.bold())
                        .foregroundColor(Color.black)
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.wood.opacity(0.4), ElementColor.wood, .black]), center: .center, startRadius: 0, endRadius: 120))
                        .clipShape(Circle())
                }
                HStack {
                    Text("\(meridians.count == 12 ? "JSON ✅" : "Cannot read JSON")")
                        .frame(width: circleSize, height: circleSize)
                        .font(.headline.bold())
                        .foregroundColor(Color.black)
                        .background(Color.white.gradient)
                        .clipShape(Circle())
                }
                NavigationLink {
                    ElementView(element: "earth")
                } label: {
                    Text(earth)
                        .frame(width: circleSize, height: circleSize)
                        .font(.title.bold())
                        .foregroundColor(Color.black)
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.earth.opacity(0.4), ElementColor.earth, .black]), center: .center, startRadius: 0, endRadius: circleSize))
                        .clipShape(Circle())
                }
            }
            HStack{
                Spacer()
                NavigationLink {
                    ElementView(element: "water")
                } label: {
                    Text(water)
                        .frame(width: circleSize, height: circleSize)
                        .font(.title.bold())
                        .foregroundColor(Color.white)
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.water.opacity(0.5), ElementColor.water, .black]), center: .center, startRadius: 0, endRadius: circleSize))
                        .clipShape(Circle())
                }
                NavigationLink {
                    ElementView(element: "metal")
                } label: {
                    Text(metal)
                        .frame(width: circleSize, height: circleSize)
                        .font(.title.bold())
                        .foregroundColor(Color.black)
                        .background(RadialGradient(gradient: Gradient(colors: [ ElementColor.metal.opacity(0.1),ElementColor.metal, .black]), center: .center, startRadius: 0, endRadius: circleSize))
                        .clipShape(Circle())
                }
                Spacer()
            }
        }
    }
}
