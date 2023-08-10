//
//  OnBoardCard.swift
//  StepByStep
//
//  Created by Reinhardt on 2022/10/30.
//

import SwiftUI

struct OnBoardCard: View {
    
    var Data : OnBoardData
    
    var body: some View {
        VStack{
            Text(Data.tite)
                .font(.system(size: 22, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, 20)
            Text(Data.description)
                .font(.system(size: 14))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 30)
            Image(Data.image)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .frame(height: 300)
                .cornerRadius(25)
                .foregroundColor(Color.white)
        }.padding(10)
    }
}

struct OnBoardCard_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardCard(Data: OnBoardData.all[0])
    }
}
