//
//  Note.swift
//  WatchNotesApp Watch App
//
//  Created by Alejandro Reyna on 29/03/23.
//

import Foundation

struct Note : Identifiable {
    var id : UUID
    var title : String
    var createdAt : String
    
    init(title : String) {
        self.id = UUID()
        self.title = title
        self.createdAt = generateDate()
    }
    
    static var dumpData : [Note] = [
        .init(title: "Fake Note"),
        .init(title: "Second Fake Note")
    ]
}

func generateDate() -> String {
    let date = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .long
    dateFormatter.timeStyle = .medium
    return dateFormatter.string(from: date)
}
