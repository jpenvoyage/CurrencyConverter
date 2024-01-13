//
//  ExchangeRate.swift
//  CurrencyConverter
//
//  Created by Joao Leal on 1/12/24.
//

import SwiftUI

struct ExchangeRate: View {
    let imagem: ImageResource
    let texto: String
    let imagem2: ImageResource
    
    var body: some View {
        HStack{
            Image(imagem)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            Text(texto)
            Image(imagem2)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            
        }
    }
}

#Preview {
    ExchangeRate(imagem: .goldpiece, texto: "1 Gold Piece = 4 Gold Pennies", imagem2: .goldpenny)
}
