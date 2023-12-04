//
//  INfluentialAndMasterPointsView.swift
//  BubbleChart
//
//  Created by Micol on 19.11.23.
//

import SwiftUI

struct InfluentialAndMasterPointsView: View {
    let layout = [
        GridItem(.adaptive(minimum: 150, maximum: 180)),
    ]
    
    let listOfInfluentialPoints = ["LIV-13","CV-12","CV-17","BL-17","GB-34","LU-9","BL-11","GB-39","ST-40","BL-12"]
    
    let listOfMasterPoints = ["LI-4","LU-7","BL-40","ST-36","SI-9","BL-54", "PC-6", "SP-6"]
    
    let listOfInfluentialPointsTargets = ["Zang Organs","Fu Organs","Qi","Blood","Tendon","Pulse , Vessels","Bone","Marrow","Phlegm","Wind , Trachera"]
    
    let listOfMasterPointsTargets = ["Face , Mouth","Head , Neck","Back , Hips","GI tract , Abdomen","Forelimb","Hind Limb","Chest , Cranial Abdomen","Caudal Abdomen , Urogen"]
    
    let influentialPoints: [String: InfluentialAndMasterPoint] = Bundle.main.decode("InfluentialPoints.json")
    
    let masterPoints: [String: InfluentialAndMasterPoint] = Bundle.main.decode("MasterPoints.json")
    
    var body: some View {
        GeometryReader { geometry in
            VStack{
                HStack {
                    Text("Influential")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(ElementColor.influential)
                    Text(" and ")
                        .font(.title2)
                        .fontWeight(.light)
                        .foregroundColor(Color.black)
                    Text("Master")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(ElementColor.master)
                    Text(" Points")
                        .font(.title2)
                        .fontWeight(.light)
                        .foregroundColor(Color.black)
                }
                
                ScrollView {
                    LazyVGrid(columns: layout) {
                        
                        ForEach(listOfInfluentialPoints, id: \.self) { point in
                            NavigationLink {
                                let influentialPoint = influentialPoints[point, default: InfluentialAndMasterPoint(id: "Not Known", target: "Unknown", description: "Unknown")]
                                ExtraAcupointView(point: influentialPoint)
                            } label: {
                                VStack {
                                    VStack {
                                        if let index = listOfInfluentialPoints.firstIndex(of: point) {
                                            Text(listOfInfluentialPointsTargets[index])
                                                .font(.subheadline)
                                                .fontWeight(.bold)
                                                .foregroundColor(Color.black)
                                        }
                                        Text("\(point)")
                                        //.fontWeight(.bold)
                                            .foregroundColor(Color.black)
                                    }
                                }
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(RadialGradient(gradient: Gradient(colors: [ElementColor.lightinfluential.opacity(0.1), ElementColor.influential.opacity(0.4)]), center: .center, startRadius: 0, endRadius: 200))
                                    //.stroke(ElementColor.influential, lineWidth: 2)
                                        .frame(width: 170, height: 50)
                                )
                            }
                        }
                        .padding()
                        
                        ForEach(listOfMasterPoints, id: \.self) { point in
                            NavigationLink {
                                let masterPoint = masterPoints[point, default: InfluentialAndMasterPoint(id: "Not Known", target: "Unknown", description: "Unknown")]
                                ExtraAcupointView(point: masterPoint)
                            } label: {
                                VStack {
                                    VStack {
                                        if let index = listOfMasterPoints.firstIndex(of: point) {
                                            Text(listOfMasterPointsTargets[index])
                                                .font(.subheadline)
                                                .fontWeight(.bold)
                                                .foregroundColor(Color.black)
                                        }
                                        Text("\(point)")
                                            .fontWeight(.thin)
                                            .foregroundColor(Color.black)
                                    }
                                }
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(RadialGradient(gradient: Gradient(colors: [ElementColor.lightmaster.opacity(0.1), ElementColor.master.opacity(0.4)]), center: .center, startRadius: 0, endRadius: 200))
                                    //.stroke(ElementColor.master, lineWidth: 2)
                                        .frame(width: 170, height: 60)
                                )
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    InfluentialAndMasterPointsView()
}
