//
//  ContentView.swift
//  SwiftUIHideOnKeyboardSampleApp
//
//  Created by Daisuke TONOSAKI on 2020/11/22.
//

import SwiftUI

import KeyboardObserving

struct ContentView: View {
    @State private var text: String = ""
    let bottomBoxHeight: CGFloat = 150
    
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: true) {
                KeyboardObservingView {
                    VStack {
                        ForEach(0..<20) { (i) in
                            TextField("Textfield\(i)", text: $text)
                                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 33))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 30)
                                        .stroke(Color(.systemGray3), lineWidth: 1)
                                )
                            
                            Spacer()
                                .frame(height: 10)
                        }
                        
                        Spacer()
                            .frame(height: bottomBoxHeight)
                    }.padding()
                }
            }
            
            VStack {
                Spacer()
                
                Group {
                    Text("Bottom box")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity,
                       minHeight: 0, idealHeight: bottomBoxHeight, maxHeight: bottomBoxHeight,
                       alignment: .center)
                .background(Color(.red))
            }
            .hideOnKeyboard()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
