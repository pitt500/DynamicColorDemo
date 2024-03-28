//
//  TeamsView.swift
//  DynamicColorDemo
//
//  Created by Pedro Rojas on 28/03/24.
//

import SwiftUI

struct TeamsView: View {
    
    let teams = Team.all
    @State private var selectedTeam: Team?
    
    var body: some View {
        NavigationSplitView {
            List (
                teams,
                selection: $selectedTeam
            ) { team in
                NavigationLink(value: team) {
                    TeamCell(team: team)
                }
            }
            .navigationTitle("Teams ⚽️")
        } detail: {
            if let team = selectedTeam {
                TeamDetail(team: team)
            } else {
                Text("Select a Team ⚽️")
            }
        }
    }
}

#Preview {
    TeamsView()
}
