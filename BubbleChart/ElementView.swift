//
//  ElementView.swift
//  BubbleChart
//
//  Created by Micol on 20.09.23.
//

import SwiftUI

struct ElementView: View {
    
    @State private var elementBgColor: Color = Color.gray
    
    var element: String
    let meridians: [String: Meridian] = Bundle.main.decode("meridiansNacupoints.json")
    
    var body: some View {
        VStack {
            let leadingMeridian = meridians[meridianFromElement(element).0, default: Meridian(id: "Not Known", element: "Unknown", yinYang: "yinYang", points: [])]
            let trailingMeridian = meridians[meridianFromElement(element).1, default: Meridian(id: "Not Known", element: "Unknown", yinYang: "yinYang", points: [])]
            let smallIntestine = leadingMeridian
            let tripleHeater = trailingMeridian
            let heart = meridians["heart", default: Meridian(id: "Not Known", element: "Unknown", yinYang: "yinYang", points: [])]
            let pericardium = meridians["pericardium", default: Meridian(id: "Not Known", element: "Unknown", yinYang: "yinYang", points: [])]
            
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
                                FiveElementWheelAcupoints(wood: leadingMeridian.points[3].name, fire: leadingMeridian.points[4].name, earth: leadingMeridian.points[5].name, metal: leadingMeridian.points[1].name, water: leadingMeridian.points[2].name, master: leadingMeridian.points[0].name, yin: false, meridian: leadingMeridian)
                                    .font(.title2.bold())
                                //TRAILING point system
                                FiveElementWheelAcupoints(wood: trailingMeridian.points[1].name, fire: trailingMeridian.points[2].name, earth: trailingMeridian.points[3].name, metal: trailingMeridian.points[4].name, water: trailingMeridian.points[5].name, master: trailingMeridian.points[0].name, yin: true, meridian: trailingMeridian)
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
                                FiveElementWheelAcupoints(wood: leadingMeridian.points[1].name, fire: leadingMeridian.points[2].name, earth: leadingMeridian.points[3].name, metal: leadingMeridian.points[4].name, water: leadingMeridian.points[5].name, master: leadingMeridian.points[0].name, yin: true, meridian: leadingMeridian)
                                    .font(.title2.bold())
                                //TRAILING point system
                                FiveElementWheelAcupoints(wood: trailingMeridian.points[3].name, fire: trailingMeridian.points[4].name, earth: trailingMeridian.points[5].name, metal: trailingMeridian.points[1].name, water: trailingMeridian.points[2].name, master: trailingMeridian.points[0].name, yin: false, meridian: trailingMeridian)
                                    .font(.title2.bold())
                            }
                            .frame(maxWidth: .infinity)
                            Spacer()
                        }
                    }
                } else { //for the fire element that has 4 meridians
                    Rectangle()
                    //Circle()
                    //color will depend on element chosen
                        .fill(RadialGradient(gradient: Gradient(colors: [elementColorPicker(element).opacity(0.1), elementColorPicker(element), .black.opacity(0.3)]), center: .center, startRadius: 0, endRadius: 400))
                        .frame(height: 550)
                        .cornerRadius(150)
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Text(smallIntestine.id)
                                .font(.title.bold())
                            Spacer()
                            Spacer()
                            Text(tripleHeater.id)
                                .font(.title.bold())
                            Spacer()
                        }
                        HStack {
                            //LEADING point system, SI
                            FiveElementWheelAcupoints(wood: smallIntestine.points[3].name, fire: smallIntestine.points[4].name, earth: smallIntestine.points[5].name, metal: smallIntestine.points[1].name, water: smallIntestine.points[2].name, master: smallIntestine.points[0].name, yin: false, meridian: smallIntestine)
                                .font(.title2.bold())
                            //TRAILING point system, TH
                            FiveElementWheelAcupoints(wood: tripleHeater.points[3].name,
                                             fire: tripleHeater.points[4].name,
                                             earth: tripleHeater.points[5].name,
                                             metal: tripleHeater.points[1].name,
                                             water: tripleHeater.points[2].name,
                                             master: tripleHeater.points[0].name,
                                             yin: false,
                                             meridian: tripleHeater)
                                .font(.title2.bold())
                        }
                        HStack {
                            Spacer()
                            Text(heart.id)
                                .font(.title.bold())
                            Spacer()
                            Spacer()
                            Text(pericardium.id)
                                .font(.title.bold())
                            Spacer()
                        }
                        HStack {
                            //LEADING point system, HT
                            FiveElementWheelAcupoints(wood: heart.points[1].name,
                                             fire: heart.points[2].name,
                                             earth: heart.points[3].name,
                                             metal: heart.points[4].name,
                                             water: heart.points[5].name,
                                             master: heart.points[0].name,
                                             yin: true,
                                             meridian: heart)
                                .font(.title2.bold())
                            //TRAILING point system, PC
                            FiveElementWheelAcupoints(wood: pericardium.points[1].name, 
                                             fire: pericardium.points[2].name,
                                             earth: pericardium.points[3].name,
                                             metal: pericardium.points[4].name,
                                             water: pericardium.points[5].name,
                                             master: pericardium.points[0].name,
                                             yin: true,
                                             meridian: pericardium)
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
            case "fire": return ("small intestine", "triple heater")
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
