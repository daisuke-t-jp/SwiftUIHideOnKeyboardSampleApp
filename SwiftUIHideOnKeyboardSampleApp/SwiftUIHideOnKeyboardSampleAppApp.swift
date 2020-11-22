//
//  SwiftUIHideOnKeyboardSampleAppApp.swift
//  SwiftUIHideOnKeyboardSampleApp
//
//  Created by Daisuke TONOSAKI on 2020/11/22.
//

import SwiftUI

import KeyboardObserving

@main
struct SwiftUIHideOnKeyboardSampleAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Keyboard())
        }
    }
}
