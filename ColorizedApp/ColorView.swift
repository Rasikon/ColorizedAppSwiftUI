//
//  ColorView.swift
//  ColorizedApp
//
//  Created by Rasikon on 21.10.2020.
//  Copyright © 2020 Rasikon. All rights reserved.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    var body: some View {
        Color(red: red, green: green, blue: blue)
            .frame(height: 180)
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.white, lineWidth: 5))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 1, green: 0.5, blue: 0.3)
    }
}
