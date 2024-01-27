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
            let acupointInfo = point
            let specieOfImages = specie.specie ? "equine" : "smallanimals"
            //let pointName = "\(specieOfImages)-\(acupointInfo.id)"
            
            let pointName = "acupoints/\(specieOfImages)-\(acupointInfo.id)"
            
            Color(ElementColor.offWhite)
                .ignoresSafeArea()
            
            
            VStack{
                GeometryReader { geometry in
                    ScrollView {
                        VStack {
                            ScrollView(.horizontal){
                                HStack{
                                    Image(pointName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: geometry.size.width)
                                }
                            }
                        }
                    VStack(alignment: .leading){
                        Text("\(acupointInfo.id)")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.headline)
                        Text("Target: \(acupointInfo.target)")
                        Text("Description: \(acupointInfo.description)")
                        Text("Image name: \(pointName)")
                    }
                    .padding(.horizontal)
                    }
                }
                Spacer()
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
}

//#Preview {
//    ExtraAcupointView()
//}
