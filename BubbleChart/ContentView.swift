//
//  ContentView.swift
//  BubbleChart
//
//  Created by Micol on 20.09.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack{}
                VStack{
                    HStack{
                        Spacer()
                        NavigationLink {
                            
                        } label: {
                            Text("Fire")
                                .frame(width: 130, height: 130)
                                .font(.title.bold())
                                .foregroundColor(Color.white)
                                .background(Color.red.gradient)
                                .clipShape(Circle())
                        }
                        Spacer()
                    }
                    HStack{
                        NavigationLink {
                            
                        } label: {
                            Text("Wood")
                                .frame(width: 130, height: 130)
                                .font(.title.bold())
                                .foregroundColor(Color.black)
                                .background(Color.green.gradient)
                                .clipShape(Circle())
                        }
                        Spacer()
                        NavigationLink {
                            
                        } label: {
                            Text("Earth")
                                .frame(width: 130, height: 130)
                                .font(.title.bold())
                                .foregroundColor(Color.black)
                                .background(Color.orange.gradient)
                                .clipShape(Circle())
                        }
                    }
                    HStack{
                        Spacer()
                        NavigationLink {
                            
                        } label: {
                            Text("Water")
                                .frame(width: 130, height: 130)
                                .font(.title.bold())
                                .foregroundColor(Color.white)
                                .background(Color.black.gradient)
                                .clipShape(Circle())
                        }
                        NavigationLink {
                            
                        } label: {
                            Text("Metal")
                                .frame(width: 130, height: 130)
                                .font(.title.bold())
                                .foregroundColor(Color.black)
                                .background(Color(UIColor.lightGray).gradient)
                                .clipShape(Circle())
                        }
                        Spacer()
                    }
                }
                HStack{}
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
