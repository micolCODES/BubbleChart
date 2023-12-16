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
        ZStack {
            let acupointInfo = meridian
            let level = setPoint(yin: yin, pointElement: pointElement)
            let specieOfImages = specie.specie ? "horse" : "smallanimals"
            let pointName = "\(specieOfImages)-\(acupointInfo.points[level].id)"
            
            Color(ElementColor.offWhite)
                .ignoresSafeArea()
            
            VStack {
                GeometryReader { geometry in
                    ScrollView {
                        
                        VStack {
                            ScrollView(.horizontal){
                                HStack{
                                    Image("test")
                                        .resizable()
                                        .scaledToFit()
                                }
                            }
                        }
                        VStack(alignment: .leading){
                            Text("\(acupointInfo.points[level].id)")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .font(.headline)
                            Text("Level: \(level != 0 ? "\(level)" : "Master Point")")
                            Text("Five Element Theory Element: \(acupointInfo.points[level].element.capitalized)")
                            Text("Acupoint description: \(acupointInfo.points[level].description)")
                            Text("Specie: \(specieOfImages)")
                            Text("Image name: \(pointName)")
                            Text("Is the specie \"horse\"? \(specie.specie ? "True, It's horse" : "False, it's smallanimals")")
                            Text("Long Text: Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
                        }
                        .padding(.horizontal)
                    }
                }
                Spacer()
                Toggle(isOn: $specie.specie, label: {
                    HStack{
                        if specie.specie {
                            Image("horseOffWhite")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        } else {
                            Image("smallanimalsOffWhite")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                    .frame(maxWidth: 80,maxHeight: 60)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 5, height: 5)))
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                    .shadow(color: Color.white, radius: 8, x: -5, y: -5)
                })
                .toggleStyle(.button)
                .font(.system(size: 100))
                .tint(ElementColor.offWhite)
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
