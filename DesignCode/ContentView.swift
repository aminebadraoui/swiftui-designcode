//
//  ContentView.swift
//  DesignCode
//
//  Created by Amine on 2020-10-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackCardView()
                .offset(x: 0, y: -40)
            
            BackCardView()
                .offset(x: 0, y: -20)
            
            CardView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("UI Design")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Text("Certificate")
                        .foregroundColor(Color("accent"))
                }
                Spacer()
                Image("Logo1")
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 20)
            Spacer()
            Image("Card1")
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 110, alignment: .top)
        }
        .frame(width: 340.0, height: 220.0)
        .background(Color.black)
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct BackCardView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(width: 300.0, height: 220.0)
        .background(Color.blue)
        .cornerRadius(20)
        .shadow(radius: 20)
    
    }
}
