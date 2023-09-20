//
//  ElementView.swift
//  BubbleChart
//
//  Created by Micol on 20.09.23.
//

import SwiftUI

struct ElementView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                HStack{}
                VStack{
                    HStack{
                        Spacer()
                        NavigationLink {
                        
                        } label: {
                            Text("Fire  POINT")
                                .frame(width: 110, height: 110)
                                .font(.title2.bold())
                                .foregroundColor(Color.white)
                                .background(Color.red.gradient)
                                .clipShape(Circle())
                        }
                        Spacer()
                    }
                    HStack{
                        NavigationLink {
                            
                        } label: {
                            Text("Wood POINT")
                                .frame(width: 110, height: 110)
                                .font(.title2.bold())
                                .foregroundColor(Color.black)
                                .background(Color.green.gradient)
                                .clipShape(Circle())
                        }
                        NavigationLink {
                            
                        } label: {
                            Text("MASTER POINT")
                                .frame(width: 110, height: 110)
                                .font(.title2.bold())
                                .foregroundColor(Color.black)
                                .background(Color.white.gradient)
                                .clipShape(Circle())
                        }
                        NavigationLink {
                            
                        } label: {
                            Text("Earth POINT")
                                .frame(width: 110, height: 110)
                                .font(.title2.bold())
                                .foregroundColor(Color.black)
                                .background(Color.orange.gradient)
                                .clipShape(Circle())
                        }
                    }
                    HStack{
                        Spacer()
                        NavigationLink {
                            
                        } label: {
                            Text("Water POINT")
                                .frame(width: 110, height: 110)
                                .font(.title2.bold())
                                .foregroundColor(Color.white)
                                .background(Color.black.gradient)
                                .clipShape(Circle())
                        }
                        NavigationLink {
                            
                        } label: {
                            Text("Metal POINT")
                                .frame(width: 110, height: 110)
                                .font(.title2.bold())
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
            //needs to be VARIABLE with element chosen
            .navigationTitle("Element View")
        }
    }
}

#Preview {
    ElementView()
}
