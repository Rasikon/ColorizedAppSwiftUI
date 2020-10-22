//
//  ContentView.swift
//  ColorizedApp
//
//  Created by Rasikon on 21.10.2020.
//  Copyright © 2020 Rasikon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var redValueSlider: Double = Double.random(in: 0...255)
    @State private var greenValueSlider: Double = Double.random(in: 0...255)
    @State private var blueValueSlider: Double = Double.random(in: 0...255)
    @State private var showAlert = false
    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.all)
            VStack {
                ColorView(red: redValueSlider/255, green: greenValueSlider/255, blue: blueValueSlider/255)
                    .padding(.bottom, 30)
                SliderAndText(show: $showAlert, value: $redValueSlider, color: .red)
                SliderAndText(show: $showAlert, value: $greenValueSlider, color: .green)
                SliderAndText(show: $showAlert, value: $blueValueSlider, color: .blue)
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SliderAndText: View {
    @Binding var show: Bool
    @Binding var value: Double
    let color: Color?
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .frame(width: 50)
            Slider(value: self.$value, in: 0...255, step: 1)
                .accentColor(color)
                .animation(.default)
            TextField("", value: self.$value, formatter: NumberFormatter()) { 
                self.checkValue()
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width: 50)
            .keyboardType(.default)
            .alert(isPresented: $show) {
                Alert (title: Text("124"), message: Text("435456")) }
        }
    }
}

extension SliderAndText {
    private func checkValue() {
        if !(0...255).contains(value) {
            show = true
            value = 0
        }
    }
}
