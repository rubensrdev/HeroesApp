//
//  HeroesList.swift
//  HeroesMasterDetailJSON
//
//  Created by Rubén Segura Romo on 5/11/24.
//

import SwiftUI

struct HeroesList: View {
	let heroes = getHeroes()
	
    var body: some View {
		
		NavigationStack {
			
			ZStack {
				LinearGradient(
					colors: [.verdeGrid, .moradoGrid],
					startPoint: .topLeading,
					endPoint: .bottomTrailing
				)
				.ignoresSafeArea()
				
				List(heroes) { heroe in
					HStack {
						NavigationLink(value: heroe) {
							Image(heroe.imagen)
								.resizable()
								.scaledToFit()
								.frame(width: 50, height: 50)
								.clipShape(Circle())
							VStack(alignment: .leading) {
								Text(heroe.apodo)
									.font(.tituloHeroeList)
									.foregroundStyle(.indigo)
								Text(heroe.nombreReal)
									.foregroundStyle(.secondary)
									.fontDesign(.monospaced)
							}
							.padding(.leading)
						}
					}
					.padding()
					//.listRowBackground(Color.clear)
				}
				.navigationTitle("Heroes")
				.navigationDestination(for: Heroe.self) { heroe in
					HeroeDetalle(heroe: heroe)
				}
				.safeAreaPadding()
				.scrollContentBackground(.hidden)
			}
			
			
		}
		
    }
}

#Preview {
    HeroesList()
}
