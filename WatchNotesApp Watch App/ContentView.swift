//
//  ContentView.swift
//  WatchNotesApp Watch App
//
//  Created by Alejandro Reyna on 29/03/23.
//

import SwiftUI

struct ContentView: View {
    var note = Note.dumpData[0]
    
    var body: some View {
        VStack {
            Text("\(note.title) - \(note.createdAt)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
