//
//  AddNoteView.swift
//  WatchNotesApp Watch App
//
//  Created by Alejandro Reyna on 29/03/23.
//

import SwiftUI

struct AddNoteView: View {
    @State private var notes : [Note] = []
    @State private var text : String = ""
    var body: some View {
        TextField("Title", text: $text)
        Button("Add note") {
            guard text.isEmpty == false else {
                return
            }
            let note  = Note(title: text, createdAt: "2020-12-12")
            notes.append(note)
            text = ""
        }
    }
}

struct AddNoteView_Previews: PreviewProvider {
    static var previews: some View {
        AddNoteView()
    }
}
