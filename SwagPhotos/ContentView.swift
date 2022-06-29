//
//  ContentView.swift
//  SwagPhotos
//
//  Created by macbook on 27/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var OpenMenu = false
    
    let columns = [GridItem(.flexible()),GridItem(.flexible())]
    
    
    init(){
        (UIApplication.shared.connectedScenes.first as?UIWindowScene)?.windows.first!.overrideUserInterfaceStyle = .dark
    }
    var body: some View {
        GeometryReader { geo in
            ScrollView{
                LazyVGrid(columns: columns){
                   
                    ForEach(1...5, id: \.self){ i in
                        Color.blue.frame(width: geo.size.width/2, height: geo.size.height/2)
                    }
                   
                    
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
       
       
        }.navigationBarItems(trailing: Button(action: {
           OpenMenu = true
        }, label: {
            Image(systemName: "chevron.down")
        }))
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $OpenMenu, content:{
            
            ZStack{
                VStack(spacing: 10){
                    Button(action: {}, label: {Text("About").font(.title).padding()})
                    Button(action: {}, label: {Text("Privacy Policy").font(.title)})
                    Button(action: {}, label: {Text("License Agreement").font(.title)})
                    Spacer()
                    Text("App Version 1.0").font(.subheadline).padding()
                }
                
                
            }
            
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
