//
//  ContentView.swift
//  CurrencyConverter
//
//  Created by Joao Leal on 1/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showExchangeInfo: Bool = false
    @State var leftAmount = ""
    @State private var rightAmount = ""
    
    var body: some View {
        
        ZStack {
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("prancingpony")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
    
                Text("Currency Exchance")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                HStack {
                    VStack{
                        HStack{
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                          
                        }
                        
                        .padding(.bottom, -5)
                        
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                            
                    }
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .symbolEffect(.pulse)
                    
                    VStack{
                        HStack{
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                        }
                        .padding(.bottom, -5)
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder).multilineTextAlignment(.trailing)
                     
                        
                    
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                
                Spacer()
                
                HStack {
                    Spacer()
                    Button {
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                    .sheet(isPresented: $showExchangeInfo, content: {
                        ExchangeInfo()
                    })
                }
               
                
                
            }
         
        }
    }
}

#Preview {
    ContentView()
}
