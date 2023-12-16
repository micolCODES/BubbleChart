//
//  ContentView.swift
//  BubbleChart
//
//  Created by Micol on 20.09.23.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var specie = SetSpecie()
    //@EnvironmentObject var specie: SetSpecie

    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(ElementColor.offWhite)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    ZStack {
                        Circle()
//                            .stroke(.gray.opacity(0.15), style: StrokeStyle(lineWidth: 10))
                            .stroke(ElementColor.offWhite, style: StrokeStyle(lineWidth: 6))
                            .frame(width: 300, height: 300)
                            .shadow(color: Color.black.opacity(0.3), radius: 8, x: 5, y: 5)
                            .shadow(color: Color.white, radius: 8, x: -5, y: -5)
//                        StarShape()
//                        .stroke(.gray.opacity(0.15), style: StrokeStyle(lineWidth: 10, lineJoin: .miter))
//                            .rotationEffect(Angle(degrees: 17))
//                            .frame(width: 330, height: 320)
                        FiveElementWheelElements()
                            .font(.title.bold())
                    }
                    Spacer()
                    //Add meridian charts
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
                    //.offset(x: 0, y: +20)
                }
                .padding()
                //.navigationTitle("5 Elements")
            }
        }
        .environmentObject(specie)
    }
}

#Preview {
    ContentView()
        .environmentObject(SetSpecie())
}
