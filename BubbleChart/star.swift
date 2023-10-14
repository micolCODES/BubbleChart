//
//  star.swift
//  BubbleChart
//
//  Created by Micol on 29.09.23.
//

import Foundation
import SwiftUI

struct StarShape : Shape {
   var sidesPenta = 5
    var sidesPoly = 80

   func path(in rect : CGRect ) -> Path{
        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
        let radius = rect.width / 2
       var path = Path()
       
       //Polygon
       let anglePoly = Double.pi * 2 / Double(sidesPoly)
       let radiusPoly = radius * 0.8
       
       let vertexIWant = [7, 9, 23, 25, 39, 41, 55, 57, 71, 73]
       var startVertex: [CGPoint] = [] //[7, 23, 39, 55, 71]
       var endVertex: [CGPoint] = [] //[57, 73, 9, 25, 41]
       var tempEndVertex: [CGPoint] = []
       
       //Skip 50
       //Cheat sheet arrows: 7-> 57 , 55 ->25, 23 -> 73, 71 -> 41, 39 -> 9
       
       var vertexArray: [CGPoint] = []
       
       for side in 0 ..< (sidesPoly) {
           if vertexIWant.contains(side) {
               let x = center.x + CGFloat(cos(Double(side) * anglePoly)) * CGFloat (radiusPoly)
               let y = center.y + CGFloat(sin(Double(side) * anglePoly)) * CGFloat(radiusPoly)
               let vertexPoint = CGPoint( x: x, y: y)
               vertexArray.append(vertexPoint)
           }
       }
       for index in 0 ..< vertexArray.count {
           if index.isMultiple(of: 2) || index == 0 {
               startVertex.append(vertexArray[index])
           } else {
               if index < 7 {
                   tempEndVertex.append(vertexArray[index]) //[9, 25, 41]
               } else {
                   endVertex.append(vertexArray[index]) //[57, 73]
               }
           }
       }
       
       endVertex += tempEndVertex
       
       for i in 0..<startVertex.count {
           path.move(to: startVertex[i])
           path.addLine(to: endVertex[i])
       }
       
        return path
  }
}
