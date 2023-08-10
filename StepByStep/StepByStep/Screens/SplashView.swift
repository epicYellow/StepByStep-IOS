//
//  SplashView.swift
//  StepByStep
//
//  Created by Reinhardt on 2022/10/30.
//

import SwiftUI

struct SplashView: View {
    
    @State var animate : Bool = false
    @State var animateTwo : Bool = true
    
    var OnData: [OnBoardData]
    
    @AppStorage("UserSession") var UserSession: Bool = false
    
    var body: some View {
        ZStack{
            if UserSession {
                ZStack{
                    HomeView(projects: Projects.all, ProjectsList: Projects.all)
                }
            } else {
                ZStack{
                    OnboardView(OnData: OnBoardData.all, projects: Projects.all, ProjectsList: Projects.all)
                }
            }
            ZStack{
                Color("LightYellow")
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 220, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .scaleEffect(animate ? 20 : 1)
                    .animation(Animation.easeInOut(duration: 0.3).delay(0.3))
                    .rotation3DEffect(
                        .degrees(animate ? 20 : 0),
                        axis: (x: 1, y: 1, z: 0.0))
                    .animation(Animation.easeInOut(duration: 0.3))
            }
            .animation(Animation.easeOut(duration: 0.2))
            .opacity(animateTwo ? 1 : 0)
        }.ignoresSafeArea(.all)
        
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                animate.toggle()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                animateTwo.toggle()
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(OnData: OnBoardData.all)
    }
}
