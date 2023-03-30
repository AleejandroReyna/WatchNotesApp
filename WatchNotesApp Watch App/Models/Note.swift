//
//  Note.swift
//  WatchNotesApp Watch App
//
//  Created by Alejandro Reyna on 29/03/23.
//

import Foundation

struct Note {
    var title : String
    var createdAt : String
    
    static var dumpData : [Note] = [
        .init(title: "Fake Note", createdAt: "2020-12-12"),
        .init(title: "Second Fake Note", createdAt: "2020-13-13")
    ]
}
