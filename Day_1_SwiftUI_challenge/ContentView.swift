//
//  ContentView.swift
//  Day_1_SwiftUI_challenge
//
//  Created by Fredson Silva on 31/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            VStack(alignment: .leading) {
                
                Image(systemName: "applelogo")
                    .font(.system(size: 60))
                    .padding(.bottom)
                
                Text("Proceed with your")
                    .font(.system(size: 20, weight: .light))
                Text("Login")
                    .font(.system(size: 30, weight: .heavy))
            }
            .frame(width: 350, height: 550, alignment: .topLeading)
            
            // MARK: Username Field
            VStack {
                
                VStack {
                    
                    Text("Username")
                        .frame(width: 350, height: 5, alignment: .leading)
                    
                    HStack(alignment: .center, spacing: 250) {
                        
                        Text("Type here  ")
                            .foregroundColor(.gray)
                        
                        Image(systemName: "person")
                            .font(.system(size: 20, weight: .light))
                        
                    }
                    .frame(width: 350, height: 39, alignment: .leading)
                    RoundedRectangle(cornerRadius: 12, style: .circular)
                        .fill(Color.gray)
                        .frame(width: 350, height: 1, alignment: .center)
                        .padding(.bottom, 40)
                }
                
                // MARK: Password Field
                VStack {
                    
                    Text("Password")
                        .frame(width: 350, height: 5, alignment: .leading)
                    
                    HStack(alignment: .center, spacing: 250) {
                        
                        Text("**********")
                            .foregroundColor(.gray)
                        
                        Image(systemName: "key")
                            .font(.system(size: 20, weight: .light))
                        
                    }
                    .frame(width: 350, height: 39, alignment: .leading)
                    RoundedRectangle(cornerRadius: 12, style: .circular)
                        .fill(Color.gray)
                        .frame(width: 350, height: 1, alignment: .center)
                }
            }
            .padding(.top, 100)
            
            
            // MARK: Login button
            
            Button {
                print("Clicou no botão")
            } label: {
                ZStack {
                    RoundedRectangle (cornerRadius: 8, style: .continuous)
                        .fill(.gray)
                    .frame(width: 350, height: 50, alignment: .center)
                    Label("Login", systemImage: "button")
                        .foregroundColor(.white)
                }
            }
            .frame(width: .infinity, height: 490, alignment: .bottom)
            
            VStack {
                Text("Forgot Password?")
                    .foregroundColor(.black)
            }
            .frame(minWidth: 100, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottom)
            .padding(.bottom, 80)

        }

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
