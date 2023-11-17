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
    
    var body: some View {
        VStack {
            let leadingMeridian = meridians[meridianFromElement(element).0, default: Meridian(id: "Not Known", element: "Unknown", yinYang: "yinYang", points: [])]
            let trailingMeridian = meridians[meridianFromElement(element).1, default: Meridian(id: "Not Known", element: "Unknown", yinYang: "yinYang", points: [])]
            
            VStack{
                Text(element.capitalized)
                    .font(.title.bold())
            }
            .padding(.top)
            ZStack {
                //for normal elements with 2 meridians
                if element != "fire" {
                    //for elements with Yin to the right
                    if (element == "wood" || element == "water") {
                        Circle()
                        //color will depend on element chosen
                            .fill(RadialGradient(gradient: Gradient(colors: [elementColorPicker(element).opacity(0.1), elementColorPicker(element), .black.opacity(0.3)]), center: .center, startRadius: 0, endRadius: 300))
                        VStack {
                            Spacer()
                            HStack {
                                Spacer()
                                Text(leadingMeridian.id)
                                    .font(.title.bold())
                                Spacer()
                                Spacer()
                                Text(trailingMeridian.id)
                                    .font(.title.bold())
                                Spacer()
                            }
                            HStack {
                                //LEADING point system
                                FiveElementWheel(wood: leadingMeridian.points[3].name, fire: leadingMeridian.points[4].name, earth: leadingMeridian.points[5].name, metal: leadingMeridian.points[1].name, water: leadingMeridian.points[2].name, master: leadingMeridian.points[0].name, yin: true, circleSize: circleSize, typeOfView: "ElementView", meridian: leadingMeridian.id)
                                    .font(.title2.bold())
                                //TRAILING point system
                                FiveElementWheel(wood: trailingMeridian.points[1].name, fire: trailingMeridian.points[2].name, earth: trailingMeridian.points[3].name, metal: trailingMeridian.points[4].name, water: trailingMeridian.points[5].name, master: trailingMeridian.points[0].name, yin: false, circleSize: circleSize, typeOfView: "ElementView", meridian: leadingMeridian.id)
                                    .font(.title2.bold())
                            }
                            .frame(maxWidth: .infinity)
                            Spacer()
                        }
                    } else {
                        //for elements with Yin to the left
                        Circle()
                        //color will depend on element chosen
                            .fill(RadialGradient(gradient: Gradient(colors: [elementColorPicker(element).opacity(0.1), elementColorPicker(element), .black.opacity(0.3)]), center: .center, startRadius: 0, endRadius: 300))
                        VStack {
                            Spacer()
                            HStack {
                                Spacer()
                                Text(leadingMeridian.id)
                                    .font(.title.bold())
                                Spacer()
                                Spacer()
                                Text(trailingMeridian.id)
                                    .font(.title.bold())
                                Spacer()
                            }
                            HStack {
                                //LEADING point system
                                FiveElementWheel(wood: leadingMeridian.points[1].name, fire: leadingMeridian.points[2].name, earth: leadingMeridian.points[3].name, metal: leadingMeridian.points[4].name, water: leadingMeridian.points[5].name, master: leadingMeridian.points[0].name, yin: true, circleSize: circleSize, typeOfView: "ElementView", meridian: leadingMeridian.id)
                                    .font(.title2.bold())
                                //TRAILING point system
                                FiveElementWheel(wood: trailingMeridian.points[3].name, fire: trailingMeridian.points[4].name, earth: trailingMeridian.points[5].name, metal: trailingMeridian.points[1].name, water: trailingMeridian.points[2].name, master: trailingMeridian.points[0].name, yin: false, circleSize: circleSize, typeOfView: "ElementView", meridian: leadingMeridian.id)
                                    .font(.title2.bold())
                            }
                            .frame(maxWidth: .infinity)
                            Spacer()
                        }
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
                            FiveElementWheel(wood: "XXX", fire: "XXX", earth: "XXX", metal: "XXX", water: "XXX", master: "XXX", yin: false, circleSize: circleSize, typeOfView: "ElementView", meridian: leadingMeridian.id)
                                .font(.title2.bold())
                            //TRAILING point system, TH
                            FiveElementWheel(wood: "XXX", fire: "XXX", earth: "XXX", metal: "XXX", water: "XXX", master: "XXX", yin: false, circleSize: circleSize, typeOfView: "ElementView", meridian: leadingMeridian.id)
                                .font(.title2.bold())
                        }
                        HStack {
                            //LEADING point system, TH
                            FiveElementWheel(wood: "XXX", fire: "XXX", earth: "XXX", metal: "XXX", water: "XXX", master: "XXX", yin: true, circleSize: circleSize, typeOfView: "ElementView", meridian: leadingMeridian.id)
                                .font(.title2.bold())
                            //TRAILING point system, PC
                            FiveElementWheel(wood: "XXX", fire: "XXX", earth: "XXX", metal: "XXX", water: "XXX", master: "XXX", yin: true, circleSize: circleSize, typeOfView: "ElementView", meridian: leadingMeridian.id)
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
    
    func meridianFromElement(_ element: String) -> (leadingMeridian: String, trailingMeridian: String) {
            switch element {
            case "wood": return ("gallbladder", "liver")
            case "earth": return ("spleen", "stomach")
            case "metal": return ("lung", "large intestine")
            case "water": return ("bladder", "kidney")
            case "fire": return ("small intestine", "heart")
            default: return ("gallbladder", "liver")
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
