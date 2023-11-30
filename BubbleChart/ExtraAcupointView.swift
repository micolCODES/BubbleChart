//
//  ExtraAcupointView.swift
//  BubbleChart
//
//  Created by Micol on 30.11.23.
//

import SwiftUI

struct ExtraAcupointView: View {
    
    let point: InfluentialAndMasterPoint
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                let acupointInfo = point
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
                    }
                    .padding()
                }
            }
        }
    }
    
//    METHODS GO HERE
}

//#Preview {
//    ExtraAcupointView()
//}
