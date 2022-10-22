//
//  ContentView.swift
//  SliderSDK
//
//  Created by Dong on 2022/10/21.
//

// 使用 第三方SDK  git@github.com:spacenation/swiftui-sliders.git

import SwiftUI
import Sliders

struct ContentView: View {
    
    @State var value = 0.5
    @State var range = 0.1...1.0
    @State var x = 0.5
    @State var y = 0.7
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            ValueSlider(value: $value, in: range, step: 0.2)
            .valueSliderStyle(
                HorizontalValueSliderStyle(
                    track:
                        HorizontalValueTrack(view: Capsule().foregroundColor(.yellow)
                        )
                        .background(Capsule().foregroundColor(.green.opacity(0.25)))
                        .frame(height: 20)
                        ,
                
                    thumb: Image("fish").resizable(),
                    thumbSize: CGSize(width: 50, height: 50)
//                    thumbInteractiveSize: CGSize(width: 35, height: 35)
//                    ,
//                    options: .force
                )
            
            )
//            ValueSlider(value: <#T##Binding<Measurement<Unit>>#>, in: <#T##ClosedRange<Measurement<Unit>>#>, step: <#T##Measurement<Unit>#>, onEditingChanged: <#T##(Bool) -> Void#>)
            
            
            RangeSlider(range: $range)
            PointSlider(x: $value, y: $y)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
