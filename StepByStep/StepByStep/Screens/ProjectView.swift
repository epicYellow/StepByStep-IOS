//
//  ProjectView.swift
//  StepByStep
//
//  Created by Reinhardt on 2022/10/30.
//

import SwiftUI

struct ProjectView: View {
    var project : Projects
    var Requirements : [Projects]
    
    var body: some View {
        ScrollView{
            VStack{
                Image(project.image)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: 280)
                    .cornerRadius(25)
                    .overlay(
                        VStack{
                            Spacer()
                            Rectangle()
                                .frame(maxWidth: .infinity, maxHeight: 60, alignment: .bottomLeading)
                                .foregroundColor(Color.white)
                                .overlay(Text(project.title).font(.system(size: 22, weight: .bold)).foregroundColor(Color("DarkBlue")))
                                .padding(.bottom, 80)
                        }
                    )
                VStack{
                    Rectangle()
                        .frame(maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                        .cornerRadius(25)
                        .foregroundColor(.white)
                        .overlay(
                            HStack{
                                Spacer()
                                Image(systemName: "dollarsign.circle")
                                    .resizable()
                                    .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color("Shadow"))
                                Spacer()
                                Text(project.price)
                                    .font(.system(size: 22, weight: .bold))
                                    .foregroundColor(Color("DarkBlue"))
                                Spacer()
                                Image(systemName: "clock")
                                    .resizable()
                                    .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color("Shadow"))
                                Spacer()
                                Text(project.time)
                                    .font(.system(size: 22, weight: .bold))
                                    .foregroundColor(Color("DarkBlue"))
                                Spacer()
                            })
                    Text(project.description).padding(.top, 20).foregroundColor(Color("DarkGray"))
                    Text("Requirements:")
                        .font(.system(size: 26, weight: .bold)).foregroundColor(Color("DarkBlue"))
                        .padding(.top)
                        .padding(.bottom)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    VStack{
                        ForEach(project.requirements, id: \.self) { Data in
                            Text(Data)
                                .foregroundColor(Color("BlackNBlack"))
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.white)
                    .cornerRadius(25)
                    Text("Steps:")
                        .font(.system(size: 26, weight: .bold)).foregroundColor(Color("DarkBlue"))
                        .padding(.top)
                        .padding(.bottom)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    VStack{
                        ForEach(project.steps, id: \.self) { Data in
                            Text(Data)
                                .padding()
                                .foregroundColor(Color("BlackNBlack"))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.white)
                    .cornerRadius(25)
                }.padding()
            }
        }.ignoresSafeArea(.all)
        .background(Color("WhiteGray"))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectView(project: Projects.all[0], Requirements: Projects.all)
            .preferredColorScheme(.dark)
    }
}
