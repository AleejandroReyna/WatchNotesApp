//
//  NoteDetailView.swift
//  WatchNotesApp Watch App
//
//  Created by Alejandro Reyna on 30/03/23.
//

import SwiftUI

struct NoteDetailView: View {
    let note : Note
    
    var body: some View {
        VStack {
            Text(note.title)
                .font(.title3)
                .bold()
            Spacer()
            Text(note.createdAt)
                .font(.system(size: 12))
                .foregroundColor(.gray)
        }
    }
}

struct NoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NoteDetailView(note: Note.dumpData[0])
    }
}
