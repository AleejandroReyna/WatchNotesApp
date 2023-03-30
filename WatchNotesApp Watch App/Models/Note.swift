//
//  Note.swift
//  WatchNotesApp Watch App
//
//  Created by Alejandro Reyna on 29/03/23.
//

import Foundation

struct Note : Identifiable, Hashable {
    var id : UUID
    var title : String
    var createdAt : String
    
    init(title : String) {
        self.id = UUID()
        self.title = title
        self.createdAt = generateDate()
    }
    
    static var dumpData : [Note] = [
        .init(title: "Note 1"),
        .init(title: "Note 2"),
        .init(title: "Note 3"),
        .init(title: "Note 4")
    ]
}

func generateDate() -> String {
    let date = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .long
    dateFormatter.timeStyle = .medium
    return dateFormatter.string(from: date)
}
