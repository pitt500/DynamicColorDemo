//
//  TeamCell.swift
//  DynamicColorDemo
//
//  Created by Pedro Rojas on 28/03/24.
//

import SwiftUI

struct TeamCell: View {
    let team: Team
    
    var body: some View {
        HStack {
            Circle()
                .frame(width: 50)
                .foregroundStyle(team.color)
            Text(team.name)
                .font(.title2)
        }
    }
}

#Preview {
    TeamCell(team: Team.all[0])
}
