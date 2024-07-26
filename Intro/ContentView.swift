//
//  ContentView.swift
//  Intro
//
//  Created by Hadia Choudhry on 7/25/24.
//

import SwiftUI

struct ContentView: View {
    @State private var funFact = ""
    
    var body: some View {
        ZStack {
            Color(red: 251/255, green: 139/255, blue: 36/255)
                .ignoresSafeArea()
            
            VStack {
                Image("profilePic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                
                Text("Claire")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 217/255, green: 3/255, blue: 104/255))
                
                Button(action: {
                    funFact = "I'm just graduated from XYZ University!"
                }) {
                    Text("Click to find out about me!")
                        .padding()
                        .background(Color.pink)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                
                if !funFact.isEmpty {
                    Text(funFact)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .padding(.top, 20)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

@main
struct AboutMeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
