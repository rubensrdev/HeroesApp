//
//  HeroesGrid.swift
//  HeroesMasterDetailJSON
//
//  Created by Rubén Segura Romo on 5/11/24.
//

import SwiftUI

struct HeroesGrid: View {
	
	let heroes = getHeroes()
	let columnas = [
		GridItem(.adaptive(minimum: 150))
	]
	

    var body: some View {
		NavigationStack {
			ScrollView {
				LazyVGrid(columns: columnas) {
					ForEach(heroes) { heroe in
						NavigationLink(value: heroe) {
							GridHeroeElement(heroe: heroe)
						}
						.buttonStyle(.plain)
						.padding()
					}
				}
			}
			.background(
				LinearGradient(colors: [.cyan], startPoint: .bottom, endPoint: .top)
					.opacity(0.2)
					.ignoresSafeArea()
			)
			.navigationTitle("Heroes")
			.navigationDestination(for: Heroe.self) { heroe in
				HeroeDetalle(heroe: heroe)
			}
			.safeAreaPadding()
		}
    }
}

#Preview {
    HeroesGrid()
}
