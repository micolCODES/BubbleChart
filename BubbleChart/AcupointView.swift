//
//  AcupointView.swift
//  BubbleChart
//
//  Created by Micol on 22.09.23.
//

import SwiftUI

struct AcupointView: View {
    @EnvironmentObject var specie: SetSpecie
    
    var meridian: Meridian
    var yin: Bool
    var pointElement: String
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                let acupointInfo = meridian
                let level = setPoint(yin: yin, pointElement: pointElement)
                
                VStack {
                    ScrollView(.horizontal){
                        HStack{
                            Image("placeholder")
                                .resizable()
                                .scaledToFit()
                            Image("placeholder")
                                .resizable()
                                .scaledToFit()
                        }
                    }
                    VStack(alignment: .leading){
                        Text("\(acupointInfo.points[level].id)")
                        Text("Level: \(level != 0 ? "\(level)" : "Master Point")")
                        Text("Five Element Theory Element: \(acupointInfo.points[level].element.capitalized)")
                        Text("Acupoint description: \(acupointInfo.points[level].description)")
                        Text("Specie: \(specie.specie)")
                    }
                    .padding()
                }
            }
        }
    }
    
//    METHODS GO HERE
    func setPoint(yin: Bool, pointElement: String) -> Int {
        if yin {
            switch pointElement {
            case "wood": return 1
            case "fire": return 2
            case "earth": return 3
            case "metal": return 4
            case "water": return 5
            case "master": return 0
            default: return 0
            }
        } else {
            switch pointElement {
            case "wood": return 3
            case "fire": return 4
            case "earth": return 5
            case "metal": return 1
            case "water": return 2
            default: return 0
            }
        }
    }
}

//#Preview {
    //AcupointView(meridian: , acupoint: "3")
//}
