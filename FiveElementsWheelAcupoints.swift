//
//  FiveElementsWheelAcupoints.swift
//  BubbleChart
//
//  Created by Micol on 19.11.23.
//

import Foundation
import SwiftUI

struct FiveElementWheelAcupoints: View {
    var wood: String
    var fire: String
    var earth: String
    var metal: String
    var water: String
    var master: String
    var yin: Bool
    var meridian: Meridian
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                NavigationLink {
                    AcupointView(meridian: meridian, yin: yin, pointElement: "fire")
                } label: {
                    Text(fire.capitalized)
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color.black)
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.lightfire, ElementColor.fire]), center: .center, startRadius: 0, endRadius: 50))
                        .clipShape(Circle())
                }
                Spacer()
            }
            HStack{
                NavigationLink {
                        AcupointView(meridian: meridian, yin: yin, pointElement: "wood")
                } label: {
                    Text(wood.capitalized)
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color.black)
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.lightwood, ElementColor.wood]), center: .center, startRadius: 0, endRadius: 50))
                        .clipShape(Circle())
                }
                NavigationLink {
                        AcupointView(meridian: meridian, yin: yin, pointElement: "master")
                } label: {
                    Text(master.capitalized)
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color.black)
                        .background(Color.white.gradient)
                        .clipShape(Circle())
                        .overlay(Circle()
                            .stroke(.black, style: StrokeStyle(lineWidth: 3, dash: [5, 7]))
                        )
                }
                NavigationLink {
                        AcupointView(meridian: meridian, yin: yin, pointElement: "earth")
                } label: {
                    Text(earth.capitalized)
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color.black)
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.lightearth, ElementColor.earth]), center: .center, startRadius: 0, endRadius: 50))
                        .clipShape(Circle())
                }
            }
            HStack{
                Spacer()
                NavigationLink {
                        AcupointView(meridian: meridian, yin: yin, pointElement: "water")
                } label: {
                    Text(water.capitalized)
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color.white)
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.lightwater, ElementColor.water]), center: .center, startRadius: 0, endRadius: 50))
                        .clipShape(Circle())
                }
                NavigationLink {
                        AcupointView(meridian: meridian, yin: yin, pointElement: "metal")
                } label: {
                    Text(metal.capitalized)
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color.black)
                        .background(RadialGradient(gradient: Gradient(colors: [ ElementColor.lightmetal, ElementColor.metal]), center: .center, startRadius: 0, endRadius: 50))
                        .clipShape(Circle())
                }
                Spacer()
            }
        }
    }
}
