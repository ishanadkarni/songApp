//
//  ContentView.swift
//  SongApp
//
//  Created by Isha Nadkarni on 6/19/20.
//  Copyright © 2020 Isha Nadkarni. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        Spacer()
            Text("Welcome to the Sound App!").font(Font.custom("AvenirNextCondensed-Bold", size: 25))
            Text("Click one of the Vinyl records to play a song.").font(Font.custom("AvenirNextCondensed-Bold", size: 18))
        Spacer()
            Image("djImage").resizable().aspectRatio(contentMode: .fit)
        Spacer()
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("vinylRecord").resizable().aspectRatio(contentMode: .fit)
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("vinylRecord").resizable().aspectRatio(contentMode: .fit)
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("vinylRecord").resizable().aspectRatio(contentMode: .fit)
            }
            }//Hstack end
        Spacer()
    }//vstack end
} //body end

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
