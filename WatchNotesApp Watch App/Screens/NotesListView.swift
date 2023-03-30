//
//  NotesListView.swift
//  WatchNotesApp Watch App
//
//  Created by Alejandro Reyna on 29/03/23.
//

import SwiftUI

struct NotesListView: View {
    @State var notes : [Note] = Note.dumpData
    var body: some View {
        List {
            ForEach(notes, id: \.self.id) { note in
                NavigationLink(value: note) {
                    Text("\(note.title) - \(note.createdAt)")
                        .lineLimit(1)
                }
            }
            .onDelete { index in
                deleteNote(index: index)
            }
        }
        .navigationDestination(for: Note.self) { note in
            NoteDetailView(note: note)
        }
    }
    
    func deleteNote(index: IndexSet) {
        withAnimation {
            notes.remove(atOffsets: index)
        }
    }
}

struct NotesListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            NotesListView()
        }
    }
}
