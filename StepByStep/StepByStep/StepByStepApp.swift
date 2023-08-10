//
//  StepByStepApp.swift
//  StepByStep
//
//  Created by Reinhardt de Eier on 29/06/1401 AP.
//

import SwiftUI

@main
struct StepByStepApp: App {
    
    var body: some Scene {
        WindowGroup {
            SplashView(OnData: OnBoardData.all)
            }
        }
    }
