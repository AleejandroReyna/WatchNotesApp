//
//  ContentView.swift
//  WatchNotesApp Watch App
//
//  Created by Alejandro Reyna on 29/03/23.
//

import SwiftUI

struct ContentView: View {
    @State var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            NavigationLink("Add Note") {
                AddNoteView()
            }
            NavigationLink("View Notes") {
                NotesListView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
