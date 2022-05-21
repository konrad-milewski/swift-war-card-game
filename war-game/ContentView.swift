//
//  ContentView.swift
//  war-game
//
//  Created by Konrad Milewski on 20/05/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerOneCard = "card11"
    @State var playerTwoCard = "card6"
    @State var playerOneScore = 0
    @State var playerTwoScore = 0
    
    
    var body: some View {
        ZStack{
            
            Image("background").ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
             Spacer()
                HStack{
                    Spacer()
                    Image(playerOneCard)
                    Spacer()
                    Image(playerTwoCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    let randomCardPOne = Int.random(in: 2...14)
                    let randomCardPTwo = Int.random(in: 2...14)
                    
                   playerOneCard = "card" + String(randomCardPOne)
                    playerTwoCard = "card" + String(randomCardPTwo)
                    
                    if(randomCardPOne > randomCardPTwo){
                        playerOneScore += 1
                    }else if(randomCardPOne < randomCardPTwo){
                        playerTwoScore += 1
                    }
                    
                } label: {
                    Image("dealbutton")
                }
                
    
               
                Spacer()
                HStack{
                    VStack(alignment: .center){
                        Text("Player 1").font(.largeTitle)
                            .padding(.bottom) .foregroundColor(Color.white)
                        
                        Text(String(playerOneScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    .padding(.trailing)
                    VStack(alignment: .center){
                        Text("Player 2").font(.largeTitle)
                            .padding(.bottom) .foregroundColor(Color.white)
                         
                        Text(String(playerTwoScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            
                    }
                    .padding(.leading)
                
                }
        Spacer()
        
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
