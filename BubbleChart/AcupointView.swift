//
//  AcupointView.swift
//  BubbleChart
//
//  Created by Micol on 22.09.23.
//

import SwiftUI

struct AcupointView: View {
    var acupoint: String
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
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
                        Text(acupoint)
                        Text("Level: XXX")
                        Text("Acupoint description: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    AcupointView(acupoint: "LIV-3")
}
