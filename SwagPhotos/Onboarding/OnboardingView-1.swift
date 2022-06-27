//
//  OnboardingView-1.swift
//  SwagPhotos
//
//  Created by macbook on 27/06/2022.
//

import SwiftUI

struct OnboardingView_1: View {
    @State var isActive :Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                .ignoresSafeArea()
                VStack {
                    Image("blackwoman").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 400, alignment: .center)
                    Text("Welcon and thanks for joining SwagPhotos").foregroundColor(.white).font(.title3).multilineTextAlignment(.center)
                    Spacer()
                   
                    NavigationLink(destination: OnboardingView_2(),isActive: $isActive) {
                        Button {
                           isActive = true
                        } label: {
                            Image(systemName: "chevron.forward").foregroundColor(.white)
                            
                            
                        }

                                }
                       
                    

                   
                }
                
                
            }
           
        } .navigationBarHidden(true)
    }
}

struct OnboardingView_1_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView_1()
    }
}
