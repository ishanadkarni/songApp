//
//  ContentView.swift
//  SongApp
//
//  Created by Isha Nadkarni on 6/19/20.
//  Copyright © 2020 Isha Nadkarni. All rights reserved.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    @State var song: AVAudioPlayer?
    
    @State var songs = ["Still Corners - Fireflies.mp3", "Alkaline Trio - Clavicle.mp3", "Blackbird Blackbird - Pure.mp3"]
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                    Text("Welcome to the Sound App!").font(Font.custom("AvenirNextCondensed-Bold", size: 25))
                    Text("Click one of the Vinyl records to play a song.").font(Font.custom("AvenirNextCondensed-Bold", size: 18)).padding(.top)
                Spacer()
                    Image("djImage").resizable().aspectRatio(contentMode: .fit)
                Spacer()
                HStack {
                    Button(action: {
                        self.playSound(soundNumber : 1)
                    }) {
                        Image("vinylRecord").resizable().aspectRatio(contentMode: .fit)
                    }
                    Button(action: {
                        self.playSound(soundNumber : 2)
                    }) {
                        Image("vinylRecord").resizable().aspectRatio(contentMode: .fit)
                    }
                    Button(action: {
                        self.playSound(soundNumber : 3)
                    }) {
                        Image("vinylRecord").resizable().aspectRatio(contentMode: .fit)
                    }
                    }//Hstack end
                NavigationLink (destination: AboutTheAppView()) {
                    Text("go to the other screen") //takes user to other page
                }
                Spacer()
            }.navigationBarTitle("Sound App")//vstack end //title of the first page
        }
} //body end

    func playSound(soundNumber : Int) {
        let path = Bundle.main.path(forResource: songs[soundNumber - 1], ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            song = try AVAudioPlayer(contentsOf: url)
            song?.play()
        } catch {
            // couldn't load file :(
        }
    }//end func
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

