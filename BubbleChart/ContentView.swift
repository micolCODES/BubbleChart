//
//  ContentView.swift
//  BubbleChart
//
//  Created by Micol on 20.09.23.
//

import SwiftUI


struct ContentView: View {
    @State private var isHorse = true
    
    @StateObject var specie = SetSpecie()
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Spacer()
                ZStack {
                    Circle()
                        .fill(.white)
                        .stroke(.gray.opacity(0.15), style: StrokeStyle(lineWidth: 10))
                        .frame(width: 300, height: 300)
//                        StarShape()
//                            .stroke(.black, style: StrokeStyle(lineWidth: 1, lineJoin: .miter))
//                            .rotationEffect(Angle(degrees: 17))
//                            .frame(width: 200, height: 200)
                    FiveElementWheelElements()
                        .font(.title.bold())
                }
                Spacer()
                Spacer()
                //Add meridian charts
                VStack {
                    Toggle(isOn: $isHorse, label: {
                        HStack{
                            if isHorse {
                                Image("horse")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            } else {
                                Image("smallanimals2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                        }
                        .frame(maxHeight: 80)
                    })
                    .onChange(of: isHorse){
                        specie.specie = (isHorse ? "horse" : "smallanimals")
                    }
                        .toggleStyle(.button)
                        .font(.system(size: 100))
                        .tint(.white)
                }
            }
            .padding()
            //.navigationTitle("5 Elements")
        }
        .environmentObject(specie)
    }
}

#Preview {
    ContentView()
}
