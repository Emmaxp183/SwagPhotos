//
//  OnboardingView-2.swift
//  SwagPhotos
//
//  Created by macbook on 27/06/2022.
//

import SwiftUI

struct OnboardingView_2: View {
    @State var isActive = false
    var body: some View {
       ZStack {
            Color.black
            .ignoresSafeArea()
           
            VStack {
                
        
                Image("GroupPic").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 400, alignment: .center)
                
                
                Text("Welcon and thanks for joining SwagPhotos").foregroundColor(.white).font(.title3).multilineTextAlignment(.center)
                
                Spacer()
                NavigationLink(destination: ContentView(),isActive: $isActive) {
                    Button {
                       isActive = true
                    } label: {
                        Image(systemName: "chevron.forward").foregroundColor(.white)
                        
                        
                    }

                           
                }
                   
                

               
            }
            
            
        }
        
    }
}

struct OnboardingView_2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView_2()
    }
}
