//
//  ContentView.swift
//  HeroesMasterDetailJSON
//
//  Created by Rubén Segura Romo on 4/11/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
		TabView {
			HeroesGrid()
				.tabItem {
					Label("Vista de GRID", systemImage: "square.grid.2x2")
				}
			HeroesList()
				.tabItem {
					Label("Vista de LIST", systemImage: "list.bullet")
				}
		}
    }
}

#Preview {
    ContentView()
}

