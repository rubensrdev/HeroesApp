//
//  HeroeDetalle.swift
//  HeroesMasterDetailJSON
//
//  Created by Rubén Segura Romo on 5/11/24.
//

import SwiftUI

struct HeroeDetalle: View {
	let heroe: Heroe
    var body: some View {
		ZStack {
			LinearGradient(
				colors: [.verdeGrid, .moradoGrid],
				startPoint: .topLeading,
				endPoint: .bottomTrailing
			)
			.ignoresSafeArea()
			VStack {
				Text(heroe.apodo)
					.font(.tituloHeroe)
					.foregroundStyle(.indigo)
				Text(heroe.nombreReal)
					.font(.title2)
					.fontWeight(.bold)
					.fontDesign(.monospaced)
					.foregroundStyle(.secondary)
					.padding(.bottom)
				if let descripcion = heroe.descripcion {
					Text("Descripción")
						.font(.title3)
						.fontWeight(.heavy)
						.fontDesign(.monospaced)
						.foregroundStyle(.white)
						.padding()
						.background(Color.indigo)
						.clipShape(RoundedRectangle(cornerRadius: 10))
						.shadow(color: .black, radius: 0.1, x: -5, y: 5)
					Text(descripcion)
						.fontWeight(.light)
						.fontDesign(.monospaced)
						.foregroundStyle(.white)
						.padding()
				}
				if let historia = heroe.historia {
					Text("Historia")
						.font(.title3)
						.fontWeight(.heavy)
						.fontDesign(.monospaced)
						.foregroundStyle(.white)
						.padding()
						.background(Color.indigo)
						.clipShape(RoundedRectangle(cornerRadius: 10))
						.shadow(color: .black, radius: 0.1, x: -5, y: 5)
					Text(historia)
						.fontWeight(.light)
						.fontDesign(.monospaced)
						.foregroundStyle(.white)
						.padding()
				}
				HStack {
					ForEach(heroe.poderes) { poder in
						Text(poder.rawValue)
							.font(.footnote)
							.fontWeight(.bold)
							.foregroundStyle(.white)
							.padding()
							.background(Color.indigo)
							.clipShape(Capsule())
							.shadow(color: .black, radius: 0.1, x: -5, y: 5)
					}
				}
				.padding()
			}
			.padding()
		}
    }
}

#Preview {
	HeroeDetalle(heroe: .preview)
}
