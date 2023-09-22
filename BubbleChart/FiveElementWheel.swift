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
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.lightfire, ElementColor.fire]), center: .center, startRadius: 0, endRadius: circleSize))
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
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.lightwood, ElementColor.wood]), center: .center, startRadius: 0, endRadius: 120))
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
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.lightearth, ElementColor.earth]), center: .center, startRadius: 0, endRadius: circleSize))
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
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.lightwater, ElementColor.water]), center: .center, startRadius: 0, endRadius: circleSize))
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
                        .background(RadialGradient(gradient: Gradient(colors: [ ElementColor.lightmetal, ElementColor.metal]), center: .center, startRadius: 0, endRadius: circleSize))
                        .clipShape(Circle())
                }
                Spacer()
            }
        }
    }
}
