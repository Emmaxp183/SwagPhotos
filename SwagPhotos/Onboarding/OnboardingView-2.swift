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
               Shape().overlay{
                   
                   Image("IMG1").resizable()
                       .aspectRatio(contentMode: .fit)
                       .frame(width: 300, height: 400, alignment: .center)
                   
               }

               Spacer()
               //Easy to use
               Text("Easy to use").font(.custom("Eina01-Bold ☞", size: 30.4)).foregroundColor(.white).multilineTextAlignment(.center)
               
               //Lorem ipsum dolor sit amet...
               Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.").font(.custom("Eina01-Regular ☞", size: 17.8)).foregroundColor(.white).multilineTextAlignment(.center).padding()
              Spacer(minLength: 5)
               NavigationLink(destination: ContentView(),isActive: $isActive) {
                   Button {
                      isActive = true
                   } label: {
                       Image(systemName: "chevron.forward").foregroundColor(.white)
                       
                       
                   }

                           }
                  
               

              
           }
           
           
       }.navigationBarHidden(false)

        
    }
}

struct OnboardingView_2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView_2()
    }
}
