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
                            ElementView()
                        } label: {
                            Text("Fire")
                                .frame(width: 120, height: 120)
                                .font(.title.bold())
                                .foregroundColor(Color.white)
                                .background(Color.red.gradient)
                                .clipShape(Circle())
                        }
                        Spacer()
                    }
                    HStack{
                        NavigationLink {
                            ElementView()
                        } label: {
                            Text("Wood")
                                .frame(width: 120, height: 120)
                                .font(.title.bold())
                                .foregroundColor(Color.black)
                                .background(Color.green.gradient)
                                .clipShape(Circle())
                        }
                        NavigationLink {
                            ElementView()
                        } label: {
                            Text("???")
                                .frame(width: 120, height: 120)
                                .font(.title.bold())
                                .foregroundColor(Color.black)
                                .background(Color.white.gradient)
                                .clipShape(Circle())
                        }
                        NavigationLink {
                            ElementView()
                        } label: {
                            Text("Earth")
                                .frame(width: 120, height: 120)
                                .font(.title.bold())
                                .foregroundColor(Color.black)
                                .background(Color.orange.gradient)
                                .clipShape(Circle())
                        }
                    }
                    HStack{
                        Spacer()
                        NavigationLink {
                            ElementView()
                        } label: {
                            Text("Water")
                                .frame(width: 120, height: 120)
                                .font(.title.bold())
                                .foregroundColor(Color.white)
                                .background(Color.black.gradient)
                                .clipShape(Circle())
                        }
                        NavigationLink {
                            ElementView()
                        } label: {
                            Text("Metal")
                                .frame(width: 120, height: 120)
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
