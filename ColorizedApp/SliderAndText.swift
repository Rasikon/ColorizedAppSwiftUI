//
//  SliderAndText.swift
//  ColorizedApp
//
//  Created by Rasikon on 21.10.2020.
//  Copyright © 2020 Rasikon. All rights reserved.
//

import SwiftUI

struct SliderAndText: View {
    @Binding var valueSlider: Double
    let colorSlider: UIColor?
    
    var body: some View {
        HStack {
            Text("\(lround(valueSlider))")
            Slider(value: $valueSlider, in: 0...255, step: 1)
                .accentColor(colorSlider)
            TextField("", value: $valueSlider, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .frame(width: 50)
//                .keyboardType(.default)
        }
    }
}

struct SliderAndText_Previews: PreviewProvider {
    static var previews: some View {
        SliderAndText()
    }
}
