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
    
    let listOfMasterPointsTargets = ["Face , Mouth","Head , Neck","Back , Hips","GI tract , Abdomen","Forelimb","Hind Limb","Chest, Cranial Abdomen","Caudal Abdomen, Urogen"]
    
    let influentialPoints: [String: InfluentialAndMasterPoint] = Bundle.main.decode("InfluentialPoints.json")
    
    let masterPoints: [String: InfluentialAndMasterPoint] = Bundle.main.decode("MasterPoints.json")
    
    var body: some View {
        ZStack {
            Color(ElementColor.offWhite)
                .ignoresSafeArea()
        GeometryReader { geometry in
            ScrollView {
                    VStack{
                        HStack {
                            Text("Influential Points")
                                .font(.title3)
                                .fontWeight(.bold)
                            //.foregroundColor(ElementColor.influential)
                        }
                        LazyVGrid(columns: layout) {
                            
                            ForEach(listOfInfluentialPoints, id: \.self) { point in
                                NavigationLink {
                                    let influentialPoint = influentialPoints[point, default: InfluentialAndMasterPoint(id: "Not Known", target: "Unknown", description: "Unknown")]
                                    ExtraAcupointView(point: influentialPoint)
                                } label: {
                                    VStack {
                                        if let index = listOfInfluentialPoints.firstIndex(of: point) {
                                            Text(listOfInfluentialPointsTargets[index])
                                                .font(.subheadline)
                                                .fontWeight(.bold)
                                                .foregroundColor(Color.black)
                                        }
                                        Text("\(point)")
                                            .fontWeight(.thin)
                                            .foregroundColor(Color.black)
                                    }
                                    .padding(6)
                                    .frame(maxWidth: .infinity)
                                    .background(ElementColor.offWhite)
                                    .padding(2)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                    .shadow(color: Color.black.opacity(0.3), radius: 8, x: 8, y: 8)
                                    .shadow(color: Color.white, radius: 8, x: -5, y: -5)
                                }
                            }
                            .padding(2)
                        }
                        .padding()
                        //.background(.lightmaster.opacity(0.5))
//                        .overlay(RoundedRectangle(cornerRadius: 10)
//                            .stroke(.gray.opacity(0.2), style: StrokeStyle(lineWidth: 3/*, dash: [15, 7]*/))
//                        )
//                        .padding(.horizontal)
                        HStack {
                            Text("Master Points")
                                .font(.title3)
                                .fontWeight(.bold)
                            //.foregroundColor(ElementColor.master)
                        }
                        LazyVGrid(columns: layout) {
                            ForEach(listOfMasterPoints, id: \.self) { point in
                                NavigationLink {
                                    let masterPoint = masterPoints[point, default: InfluentialAndMasterPoint(id: "Not Known", target: "Unknown", description: "Unknown")]
                                    ExtraAcupointView(point: masterPoint)
                                } label: {
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
                                    .padding(6)
                                    .frame(maxWidth: .infinity)
                                    .background(ElementColor.offWhite)
                                    .padding(2)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                    .shadow(color: Color.black.opacity(0.3), radius: 8, x: 8, y: 8)
                                    .shadow(color: Color.white, radius: 8, x: -5, y: -5)
                                }
                            }
                        }
                        .padding()
                        //.background(.lightmaster.opacity(0.5))
//                        .overlay(RoundedRectangle(cornerRadius: 10)
//                            .stroke(.gray.opacity(0.2), style: StrokeStyle(lineWidth: 3/*, dash: [15, 7]*/))
//                        )
//                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

#Preview {
    InfluentialAndMasterPointsView()
}
