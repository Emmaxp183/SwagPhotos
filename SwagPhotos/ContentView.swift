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
        ScrollView{
            
            
            
        }
        HStack{
            VStack{
                Text("Swag Photos").foregroundColor(.white).font(.title2)
                Text("See whats coming in the next update").foregroundColor(.white).font(.subheadline)

                Link("View Our Terms of Service",
                      destination: URL(string: "https://www.example.com/TOS.html")!)

          
            
        }
       
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
