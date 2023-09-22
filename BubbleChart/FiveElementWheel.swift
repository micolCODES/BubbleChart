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
    var master: String
    var yin: Bool
    var circleSize: CGFloat
    var typeOfView: String
    
    
    let meridians: [String: Meridian] = Bundle.main.decode("meridiansNacupoints.json")
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                NavigationLink {
                    if typeOfView == "ContentView" {
                        ElementView(element: fire)
                    } else {
                        //AcupointView
                    }
                } label: {
                    Text(fire.capitalized)
                        .frame(width: circleSize, height: circleSize)
                        .foregroundColor(Color.white)
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.fire.opacity(0.6), ElementColor.fire, .black]), center: .center, startRadius: 0, endRadius: circleSize))
                        .clipShape(Circle())
                }
                Spacer()
            }
            HStack{
                NavigationLink {
                    if typeOfView == "ContentView" {
                        ElementView(element: wood)
                    } else {
                        //AcupointView
                    }
                } label: {
                    Text(wood.capitalized)
                        .frame(width: circleSize, height: circleSize)
                        .foregroundColor(Color.black)
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.wood.opacity(0.4), ElementColor.wood, .black]), center: .center, startRadius: 0, endRadius: 120))
                        .clipShape(Circle())
                }
                HStack {
                    Text(master.capitalized)
                        .frame(width: circleSize, height: circleSize)
                        .foregroundColor(Color.black)
                        .background(Color.white.gradient)
                        .clipShape(Circle())
                }
                NavigationLink {
                    if typeOfView == "ContentView" {
                        ElementView(element: earth)
                    } else {
                        //AcupointView
                    }
                } label: {
                    Text(earth.capitalized)
                        .frame(width: circleSize, height: circleSize)
                        .foregroundColor(Color.black)
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.earth.opacity(0.4), ElementColor.earth, .black]), center: .center, startRadius: 0, endRadius: circleSize))
                        .clipShape(Circle())
                }
            }
            HStack{
                Spacer()
                NavigationLink {
                    if typeOfView == "ContentView" {
                        ElementView(element: water)
                    } else {
                        //AcupointView
                    }
                } label: {
                    Text(water.capitalized)
                        .frame(width: circleSize, height: circleSize)
                        .foregroundColor(Color.white)
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.water.opacity(0.5), ElementColor.water, .black]), center: .center, startRadius: 0, endRadius: circleSize))
                        .clipShape(Circle())
                }
                NavigationLink {
                    if typeOfView == "ContentView" {
                        ElementView(element: metal)
                    } else {
                        //AcupointView
                    }
                } label: {
                    Text(metal.capitalized)
                        .frame(width: circleSize, height: circleSize)
                        .foregroundColor(Color.black)
                        .background(RadialGradient(gradient: Gradient(colors: [ ElementColor.metal.opacity(0.1),ElementColor.metal, .black]), center: .center, startRadius: 0, endRadius: circleSize))
                        .clipShape(Circle())
                }
                Spacer()
            }
        }
    }
}
