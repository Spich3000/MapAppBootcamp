//
//  LocationMapAnnotationView.swift
//  MapAppBootcamp
//
//  Created by Дмитрий Спичаков on 10.07.2022.
//

import SwiftUI

struct LocationMapAnnotationView: View {
    
    // MARK: PROPERTIES
    
    let accentColor = Color("AccentColor")
    
    // MARK: BODY

    var body: some View {
        VStack(spacing: 0.0) {
            Image(systemName: "map.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .font(.headline)
                .foregroundColor(.white)
                .padding(6)
                .background(accentColor)
                .cornerRadius(36)
            
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(accentColor)
                .frame(width: 10, height: 10)
                .rotationEffect(Angle(degrees: 180))
                .offset(y: -3)
                .padding(.bottom, 40)
        }
    }
}

// MARK: PREVIEW

struct LocationMapAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            LocationMapAnnotationView()
        }
    }
}
