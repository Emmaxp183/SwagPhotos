//
//  Shape.swift
//  SwagPhotos
//
//  Created by macbook on 28/06/2022.
//

import SwiftUI

struct Shape: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color(#colorLiteral(red: 1, green: 0.925000011920929, blue: 0.925000011920929, alpha: 1)))
            .frame(width: 239.6, height: 239.6)
            Circle()
                .fill(Color(#colorLiteral(red: 1, green: 0.925000011920929, blue: 0.925000011920929, alpha: 1)))
            .frame(width: 293, height: 293)
            .opacity(0.6)
        }
        
    }
}

struct Shape_Previews: PreviewProvider {
    static var previews: some View {
        Shape()
    }
}
