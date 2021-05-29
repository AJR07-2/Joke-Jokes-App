//
//  ContentView.swift
//  Jokes App Acc To Lesson
//
//  Created by Ang Jun Ray on 29/5/21.
//

import SwiftUI

struct Joke{
    var setup:String
    var punchLine:String
    init(setup: String, punchline: String){
        self.setup = setup
        self.punchLine = punchline
    }
}

struct ContentView: View {
    var jokes = [
        Joke(setup: "Why did the chicken cross the road?", punchline: "To get to the other side!"),
                 
        Joke(setup: "Why couldn't the bicycle stand up?", punchline: "It was two tired!"),
                 
        Joke(setup: "Is this pool safe for diving?", punchline: "It deep ends"),
                 
        Joke(setup: "Where do you learn to make ice cream?", punchline: "Sunday School"),
                 
        Joke(setup: "Did you hear about the cheese factory that exploded in France?", punchline: "There was nothing left but de Brie"),
                 
        Joke(setup: "Dad, can you put my shoes one?", punchline: "I dont think they'll fit me")]
    
    @State var showPunchLine = false
    @State var currentJoke = 0
    @State var isFeedbackPresented = false
    @State var isFeedbackResponsePrsented = false
    @State var isFeedbackPositive = false
    var body: some View {
        VStack{
            Text(jokes[currentJoke].setup)
                .padding()
            
            Button("Nani"){
                
            }
            .padding()
        }
        .onTapGesture {
            currentJoke += 1
        }
        .alert(isPresented: $isFeedbackPresented, content: {
            return
        })
        .sheet(isPresented: $isFeedbackResponsePrsented, content: {
            
        })
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
