//
//  GridHeroeElement.swift
//  HeroesMasterDetailJSON
//
//  Created by Rubén Segura Romo on 5/11/24.
//
import SwiftUI

struct GridHeroeElement: View {
	let heroe: Heroe
	var body: some View {
		VStack {
			Image(heroe.imagen)
				.resizable()
				.scaledToFit()
				.frame(width: 50, height: 50)
				.clipShape(Circle())
			Text(heroe.apodo)
				.font(.tituloHeroe)
				.foregroundStyle(.indigo)
			Text(heroe.nombreReal)
				.foregroundStyle(.secondary)
				.fontDesign(.monospaced)
		}
		.padding()
		.frame(minWidth: 180, maxHeight: 180)
		.background(LinearGradient(colors: [.verdeGrid, .moradoGrid], startPoint: .topLeading, endPoint: .bottomTrailing))
		.clipShape(RoundedRectangle(cornerRadius: 5))
		.shadow(color: .primary.opacity(0.3), radius: 5, x: 0, y: 5)
	}
}

#Preview {
	GridHeroeElement(heroe: .preview)
}
