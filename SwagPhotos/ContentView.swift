//
//  ContentView.swift
//  SwagPhotos
//
//  Created by macbook on 27/06/2022.
//

import SwiftUI

struct ContentView: View {
    init(){
        (UIApplication.shared.connectedScenes.first as?UIWindowScene)?.windows.first!.overrideUserInterfaceStyle = .dark
    }
    var body: some View {
        Text("Hello, world!")
            .padding()
            .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
