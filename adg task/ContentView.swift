//
//  ContentView.swift
//  adg task
//
//  Created by YASHIKA GUPTA on 19/06/24.
//

import SwiftUI

struct ContentView: View {
    
   @State var playercard="card7"
   @State var cpucard="card13"
   @State var playerscore=0
   @State var cpuscore=0
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
                HStack{
                    Spacer()
                    Image(playercard)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                    Image(cpucard)
                    Spacer()
                    
                }
                Spacer()
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                .foregroundColor(.white)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                            .padding(.bottom, 10.0)
                        Text(String(playerscore))
                            .foregroundColor(Color.white)
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                            .padding(.bottom, 10.0)
                        Text(String(cpuscore))
                            .foregroundColor(Color.white)
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                        
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
    
    func deal(){
        var p=Int.random(in: 2...14)
        var c=Int.random(in: 2...14)
        playercard = "card" + String(p)
        cpucard = "card" + String(c)
        if p>c{
            playerscore += 1
        }
        else if c>p{
            cpuscore += 1
        }
        
    }
}

#Preview {
    ContentView()
}
