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
        VStack(alignment: .leading) {
            ForEach(notes, id: \.self.id) { note in
                Text("\(note.title) - \(note.createdAt)")
                    .lineLimit(1)
            }
        }
    }
}

struct NotesListView_Previews: PreviewProvider {
    static var previews: some View {
        NotesListView()
    }
}
