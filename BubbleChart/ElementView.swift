//
//  ElementView.swift
//  BubbleChart
//
//  Created by Micol on 20.09.23.
//

import SwiftUI

struct ElementView: View {
    
    @State private var elementBgColor: Color = Color.gray
    @State private var circleSize = CGFloat(50)
    
    var element: String
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Circle()
                //color will depend on element chosen
                    .fill(RadialGradient(gradient: Gradient(colors: [elementColorPicker(element).opacity(0.1), elementColorPicker(element).opacity(0.7), .black.opacity(0.3)]), center: .center, startRadius: 0, endRadius: 300))
                HStack {
                    //LEADING point system
                    FiveElementWheel(wood: "XXX", fire: "XXX", earth: "XXX", metal: "XXX", water: "XXX", master: "XXX", yin: true, circleSize: circleSize, typeOfView: "ElementView")
                        .font(.title2.bold())
                    //TRAILING point system
                    FiveElementWheel(wood: "XXX", fire: "XXX", earth: "XXX", metal: "XXX", water: "XXX", master: "XXX", yin: false, circleSize: circleSize, typeOfView: "ElementView")
                        .font(.title2.bold())
                }
                .frame(maxWidth: .infinity)
            }
            .padding()
            //needs to be VARIABLE with element chosen
            .navigationTitle(element.capitalized)
        }
    }
    
    func elementColorPicker (_ element: String) -> Color{
        switch element {
        case "wood": return ElementColor.wood
        case "fire": return ElementColor.fire
        case "earth": return ElementColor.earth
        case "metal": return ElementColor.metal
        case "water": return ElementColor.water
        default: return Color.white
        }
    }
    
    func elementAcupointsPicker(_ element: String) {
        
    }
}

#Preview {
    ElementView(element: "fire")
}
