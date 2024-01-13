//
//  ExchangeInfo.swift
//  CurrencyConverter
//
//  Created by Joao Leal on 1/12/24.
//

import SwiftUI

struct ExchangeInfo: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                Text("Exchange rates")
                    .font(.largeTitle)
                    .tracking(3)
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
           
                ExchangeRate(imagem: .goldpiece, texto: "1 Gold Piece = 4 Gold Pennies", imagem2: .goldpenny)
                
                ExchangeRate(imagem: .goldpiece, texto: "1 Gold Penny = 4 Silver Pieces", imagem2: .silverpiece)
                
                ExchangeRate(imagem: .silverpiece, texto: "1 Silver Piece = 4 Silver Pennies", imagem2: .silverpenny)
                
                ExchangeRate(imagem: .silverpenny, texto: "1 Silver Penny = 100 Copper Pennies", imagem2: .copperpenny)
                
                
                
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                    .font(.largeTitle)
                    .padding()
                    .foregroundStyle(.white)
                
            }
            .foregroundColor(.black)
        }
    }
}
#Preview {
    ExchangeInfo()
}

