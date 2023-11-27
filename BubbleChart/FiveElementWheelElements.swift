//
//  FiveElementWheel.swift
//  BubbleChart
//
//  Created by Micol on 22.09.23.
//

import Foundation
import SwiftUI

struct FiveElementWheelElements: View {
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                NavigationLink {
                        ElementView(element: "fire")
                } label: {
                    Text("Fire")
                        .frame(width: 120, height: 120)
                        .foregroundColor(Color.white)
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.lightfire, ElementColor.fire]), center: .center, startRadius: 0, endRadius: 120))
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
                        .foregroundColor(Color.black)
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.lightwood, ElementColor.wood]), center: .center, startRadius: 0, endRadius: 120))
                        .clipShape(Circle())
                }
                NavigationLink {
                        InfluentialAndMasterPointsView()
                } label: {
                    Text("Master")
                        .frame(width: 120, height: 120)
                        .foregroundColor(Color.black)
                        .background(Color.white.gradient)
                        .clipShape(Circle())
                }
                NavigationLink {
                        ElementView(element: "earth")
                } label: {
                    Text("Earth")
                        .frame(width: 120, height: 120)
                        .foregroundColor(Color.black)
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.lightearth, ElementColor.earth]), center: .center, startRadius: 0, endRadius: 120))
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
                        .foregroundColor(Color.white)
                        .background(RadialGradient(gradient: Gradient(colors: [ElementColor.lightwater, ElementColor.water]), center: .center, startRadius: 0, endRadius: 120))
                        .clipShape(Circle())
                }
                NavigationLink {
                        ElementView(element: "metal")
                } label: {
                    Text("Metal")
                        .frame(width: 120, height: 120)
                        .foregroundColor(Color.black)
                        .background(RadialGradient(gradient: Gradient(colors: [ ElementColor.lightmetal, ElementColor.metal]), center: .center, startRadius: 0, endRadius: 120))
                        .clipShape(Circle())
                }
                Spacer()
            }
        }
    }
}
