//
//  TeamDetail.swift
//  DynamicColorDemo
//
//  Created by Pedro Rojas on 28/03/24.
//

import SwiftUI

struct TeamDetail: View {
    let team: Team
    
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(team.color)
            Text(team.name)
                .font(.largeTitle)
                .foregroundStyle(
                    team.color.adaptedTextColor()
                )
        }
    }
}

#Preview {
    TeamDetail(team: Team.all[0])
}
