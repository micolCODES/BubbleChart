//
//  ExtraAcupointView.swift
//  BubbleChart
//
//  Created by Micol on 30.11.23.
//

import SwiftUI

struct ExtraAcupointView: View {
    
    @EnvironmentObject var specie: SetSpecie
    
    let point: InfluentialAndMasterPoint
    
    var body: some View {  
        ZStack {
        Color(ElementColor.offWhite)
            .ignoresSafeArea()
        GeometryReader { geometry in
            ScrollView {
                let acupointInfo = point
                let specieOfImages = specie.specie ? "horse" : "smallanimals"
                let pointName = "\(specieOfImages)-\(acupointInfo.id)"

//                let level = setPoint(yin: yin, pointElement: pointElement)
              
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
                            Text("\(acupointInfo.id)")
                            Text("Target: \(acupointInfo.target)")
                            Text("Description: \(acupointInfo.description)")
                            Text("Image name: \(pointName)")
                        }
                        .padding()
                        VStack {
                            Toggle(isOn: $specie.specie, label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .shadow(color: Color.black.opacity(0.2), radius: 8, x: 8, y: 8)
                                        .shadow(color: Color.white, radius: 8, x: -5, y: -5)
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
                                }
                                .frame(maxWidth: 120, maxHeight: 120)
                            })
                            .toggleStyle(.button)
                            .font(.system(size: 100))
                            .tint(.white)
                        }
                    }
                }
            }
        }
    }
    
//    METHODS GO HERE
}

//#Preview {
//    ExtraAcupointView()
//}
