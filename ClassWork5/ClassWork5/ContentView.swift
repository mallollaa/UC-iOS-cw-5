//
//  ContentView.swift
//  ClassWork5
//
//  Created by Manal H R Alajmi  on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var selectemoji = ""
    
    let emoji = ["😘","☺️","😊","🥹","😎","🥳","😤","😭","❤️", " 😍" , "🤩" , "🥶", "🙄","🤒","😖"]
    var body: some View {
        VStack{
            Spacer()
            Text("اختار الايموجي اللي يعبر عنك اليوم !")
                .bold()
                .font(.largeTitle)
                .padding()
//                Circle()
//                .frame(width: 150, height: 120)
//                .foregroundColor(.yellow)
//                .padding()
            Text (selectemoji)
                .font(.largeTitle)
                .frame(width: 120, height: 160)
                .clipShape(Circle())
            
                ScrollView(.horizontal) {
                    ZStack{
                        
                    HStack {
                        ForEach(emoji, id: \.self) {oneemoji in
                    Text(oneemoji)
                                .frame(width: 100, height: 100)
                                .background(Color.yellow)
                                .clipShape(Circle())
                                .font(.largeTitle)

                            

                            
                                .font(.largeTitle)
                                .onTapGesture {
                                    selectemoji = oneemoji
                                  
                                    
                                }
//                Text(emoji)
            }
                    }
                    }
            }
            Spacer()
            
            
            
        }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
