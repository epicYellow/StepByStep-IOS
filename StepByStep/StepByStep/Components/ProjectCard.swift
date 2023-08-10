//
//  ProjectCard.swift
//  StepByStep
//
//  Created by Reinhardt on 2022/10/24.
//

import SwiftUI

struct ProjectCard: View {
    
    var project : Projects
    
    var body: some View {
        HStack{
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 160)
                .cornerRadius(25)
                .foregroundColor(Color("CardColor"))
                .overlay(
                    HStack{
                        Image(project.image)
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: 135, maxHeight: 135)
                            .cornerRadius(25)
                        VStack{ 
                            Text(project.title)
                                .padding(.top)
                                .font(.system(size: 22, weight: .bold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(Color("TextColor"))
                            Spacer()
                            Text(project.author)
                                .foregroundColor(Color("TextColor"))
                                .font(.system(size: 18, weight: .bold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                        }.padding(.leading, 20)
                    }.padding()
                )
        }
    }
}

struct ProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCard(project: Projects.all[0])
            .preferredColorScheme(.dark)
    }
}

