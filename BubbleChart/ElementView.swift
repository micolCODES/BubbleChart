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
    let meridians: [String: Meridian] = Bundle.main.decode("meridiansNacupoints.json")
    //let testMeridian = meridians["liver"]
    
    var body: some View {
        VStack {
            VStack{
                Text(element.capitalized)
                    .font(.title.bold())
            }
            .padding(.top)
            ZStack {
                //for normal elements with 2 meridians
                if element != "fire" {
                    Circle()
                    //color will depend on element chosen
                        .fill(RadialGradient(gradient: Gradient(colors: [elementColorPicker(element).opacity(0.1), elementColorPicker(element), .black.opacity(0.3)]), center: .center, startRadius: 0, endRadius: 300))
                    VStack {
                        Spacer()
                        HStack {
                            //LEADING point system
                            FiveElementWheel(wood: "XXX", fire: "XXX", earth: "XXX", metal: "XXX", water: "XXX", master: "XXX", yin: true, circleSize: circleSize, typeOfView: "ElementView")
                                .font(.title2.bold())
                            //TRAILING point system
                            FiveElementWheel(wood: "XXX", fire: "XXX", earth: "XXX", metal: "XXX", water: "XXX", master: "XXX", yin: false, circleSize: circleSize, typeOfView: "ElementView")
                                .font(.title2.bold())
                        }
                        .frame(maxWidth: .infinity)
                        Spacer()
                    }
                } else { //for the fire element that has 4 meridians
                    Rectangle()
                    //color will depend on element chosen
                        .fill(RadialGradient(gradient: Gradient(colors: [elementColorPicker(element).opacity(0.1), elementColorPicker(element), .black.opacity(0.3)]), center: .center, startRadius: 0, endRadius: 400))
                        .frame(height: 480)
                        .cornerRadius(150)
                    VStack {
                        Spacer()
                        HStack {
                            //LEADING point system, SI
                            FiveElementWheel(wood: "XXX", fire: "XXX", earth: "XXX", metal: "XXX", water: "XXX", master: "XXX", yin: false, circleSize: circleSize, typeOfView: "ElementView")
                                .font(.title2.bold())
                            //TRAILING point system, TH
                            FiveElementWheel(wood: "XXX", fire: "XXX", earth: "XXX", metal: "XXX", water: "XXX", master: "XXX", yin: false, circleSize: circleSize, typeOfView: "ElementView")
                                .font(.title2.bold())
                        }
                        HStack {
                            //LEADING point system, TH
                            FiveElementWheel(wood: "XXX", fire: "XXX", earth: "XXX", metal: "XXX", water: "XXX", master: "XXX", yin: true, circleSize: circleSize, typeOfView: "ElementView")
                                .font(.title2.bold())
                            //TRAILING point system, PC
                            FiveElementWheel(wood: "XXX", fire: "XXX", earth: "XXX", metal: "XXX", water: "XXX", master: "XXX", yin: true, circleSize: circleSize, typeOfView: "ElementView")
                                .font(.title2.bold())
                        }
                        .frame(maxWidth: .infinity)
                        Spacer()
                    }
                }
            }
            .padding()
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
