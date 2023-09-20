//
//  ElementView.swift
//  BubbleChart
//
//  Created by Micol on 20.09.23.
//

import SwiftUI

struct ElementView: View {
    
    let element: String
    
    var body: some View {
        NavigationView {
            ZStack {
                Circle()
                //color will depend on element chosen
                    .fill(RadialGradient(gradient: Gradient(colors: [.red.opacity(0.1), .red.opacity(0.7), .black.opacity(0.3)]), center: .center, startRadius: 0, endRadius: 300))
                HStack{}
                HStack {
                    //LEADING point system
                    VStack{
                        HStack{
                            Spacer()
                            NavigationLink {
                                
                            } label: {
                                Text("XXX")
                                    .frame(width: 50, height: 50)
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
                                Text("XXX")
                                    .frame(width: 50, height: 50)
                                    .font(.title2.bold())
                                    .foregroundColor(Color.black)
                                    .background(Color.green.gradient)
                                    .clipShape(Circle())
                            }
                            NavigationLink {
                                
                            } label: {
                                Text("XXX")
                                    .frame(width: 50, height: 50)
                                    .font(.title2.bold())
                                    .foregroundColor(Color.black)
                                    .background(Color.white.gradient)
                                    .clipShape(Circle())
                            }
                            NavigationLink {
                                
                            } label: {
                                Text("XXX")
                                    .frame(width: 50, height: 50)
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
                                Text("XXX")
                                    .frame(width: 50, height: 50)
                                    .font(.title2.bold())
                                    .foregroundColor(Color.white)
                                    .background(Color.black.gradient)
                                    .clipShape(Circle())
                            }
                            NavigationLink {
                                
                            } label: {
                                Text("XXX")
                                    .frame(width: 50, height: 50)
                                    .font(.title2.bold())
                                    .foregroundColor(Color.black)
                                    .background(Color(UIColor.lightGray).gradient)
                                    .clipShape(Circle())
                            }
                            Spacer()
                        }
                    }
                    //TRAILING point system
                    VStack{
                        HStack{
                            Spacer()
                            NavigationLink {
                                
                            } label: {
                                Text("XXX")
                                    .frame(width: 50, height: 50)
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
                                Text("XXX")
                                    .frame(width: 50, height: 50)
                                    .font(.title2.bold())
                                    .foregroundColor(Color.black)
                                    .background(Color.green.gradient)
                                    .clipShape(Circle())
                            }
                            NavigationLink {
                                
                            } label: {
                                Text("XXX")
                                    .frame(width: 50, height: 50)
                                    .font(.title2.bold())
                                    .foregroundColor(Color.black)
                                    .background(Color.white.gradient)
                                    .clipShape(Circle())
                            }
                            NavigationLink {
                                
                            } label: {
                                Text("XXX")
                                    .frame(width: 50, height: 50)
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
                                Text("XXX")
                                    .frame(width: 50, height: 50)
                                    .font(.title2.bold())
                                    .foregroundColor(Color.white)
                                    .background(Color.black.gradient)
                                    .clipShape(Circle())
                            }
                            NavigationLink {
                                
                            } label: {
                                Text("XXX")
                                    .frame(width: 50, height: 50)
                                    .font(.title2.bold())
                                    .foregroundColor(Color.black)
                                    .background(Color(UIColor.lightGray).gradient)
                                    .clipShape(Circle())
                            }
                            Spacer()
                        }
                    }
                }
                HStack{}
            }
            .padding()
            //needs to be VARIABLE with element chosen
            .navigationTitle(element)
        }
    }
}

#Preview {
    ElementView(element: "fire")
}
