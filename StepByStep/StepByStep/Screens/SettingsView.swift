//
//  SettingsView.swift
//  StepByStep
//
//  Created by student on 2022/10/24.
//

import SwiftUI

enum Schemetype: Int, Identifiable, CaseIterable {
    var id: Self { self }
    case system
    case light
    case dark
}

extension Schemetype {
    var title: String {
        switch self {
        case .system:
            return "System"
        case .light:
            return "Light"
        case .dark:
            return "Dark"
    }
}
}

struct SettingsView: View {
    
    @AppStorage("systemThemeVal") private var systemTheme: Int = Schemetype.allCases.first!.rawValue
    
    private var selectedScheme: ColorScheme? {
        guard let theme = Schemetype(rawValue: systemTheme) else { return nil }
        switch theme {
        case .light:
            return .light
        case .dark:
            return .dark
        default:
            return nil
        }
    }
    
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                
                Text("Settings").foregroundColor(Color("TextColor"))
                    .font(.system(size: 26, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Spacer()
                
                Picker("Mode", selection: $systemTheme) {
                    ForEach(Schemetype.allCases) { item in
                        Text(item.title)
                            .tag(item.rawValue)
                    }
                }.pickerStyle(SegmentedPickerStyle())
                .padding()
                
                Spacer()
                
                VStack{
                    Text("Github").foregroundColor(Color("BlackNBlack"))
                        .font(.system(size: 26, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .center)
                    HStack{
                        Image("Profile")
                            .resizable()
                            .scaledToFit()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(25)
                        Spacer()
                        Text("EpicBlue1").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(Color("BlackNBlack"))
                        Spacer()
                        Button (action: {if let url = URL(string: "https://github.com/EpicBlue1"){
                            UIApplication.shared.open(url)
                        }}) { Text("Visit Profile") .padding().foregroundColor(Color("BlackNBlack")) }
                        .background(Color("DarkBlue"))
                        .foregroundColor(.white)
                        .cornerRadius(25)                 
                    }
                    
                    Text("Hi Im Reinhardt de Beer, as second year developer at Open Window. Find out more by clicking visit profile!").padding().foregroundColor(Color("BlackNBlack"))
                }.padding()
                .background(Color.white)
                .cornerRadius(25)
                Spacer()
                VStack{
                    Text("Special thanks to:").foregroundColor(Color("BlackNBlack"))
                        .font(.system(size: 26, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .center)
                    HStack{
                        Image("WebLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(25)
                        Spacer()
                        Text("Where I got the projects").foregroundColor(Color("BlackNBlack"))
                        Spacer()
                    }
                    Button (action: {if let url = URL(string: "https://homebnc.com"){
                        UIApplication.shared.open(url)
                    }}) { Text("Visit")
                    }.padding()
                    .background(Color("DarkBlue"))
                    .foregroundColor(.white)
                    .cornerRadius(25)
                }.padding()
                .background(Color.white)
                .cornerRadius(25)
                
                Spacer()
                Text("v1.0.0")
            }
            .padding()
            .navigationBarHidden(true)
            .ignoresSafeArea(.all)
            .background(Color("WhiteGray"))
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .preferredColorScheme(selectedScheme)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
