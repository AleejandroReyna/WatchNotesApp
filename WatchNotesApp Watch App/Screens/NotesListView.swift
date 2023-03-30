//
//  NotesListView.swift
//  WatchNotesApp Watch App
//
//  Created by Alejandro Reyna on 29/03/23.
//

import SwiftUI

struct NotesListView: View {
    var notes : [Note] = Note.dumpData
    var body: some View {
        NavigationStack {
            ScrollView() {
                ForEach(notes, id: \.self.id) { note in
                    NavigationLink(value: note) {
                        Text("\(note.title) - \(note.createdAt)")
                            .lineLimit(1)
                    }
                }
                .navigationDestination(for: Note.self) { note in
                    NoteDetailView(note: note)
                }
            }
        }
    }
}

struct NotesListView_Previews: PreviewProvider {
    static var previews: some View {
        NotesListView()
    }
}
