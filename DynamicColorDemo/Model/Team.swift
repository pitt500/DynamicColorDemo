//
//  Team.swift
//  DynamicColorDemo
//
//  Created by Pedro Rojas on 28/03/24.
//

import SwiftUI

struct Team: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let color: Color
    
    static var all: [Team] {
        [
            .init(name: "Team A", color: .red),
            .init(name: "Team B", color: .orange),
            .init(name: "Team C", color: .yellow),
            .init(name: "Team D", color: .blue),
            .init(name: "Team E", color: .mint),
            .init(name: "Team F", color: .indigo),
            .init(name: "Team G", color: .black),
        ]
    }
}

