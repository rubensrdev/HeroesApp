//
//  PreviewData.swift
//  HeroesMasterDetailJSON
//
//  Created by Rubén Segura Romo on 5/11/24.
//

import Foundation

extension Heroe {
	static let preview: Heroe = .init(
		id: UUID(),
		nombreReal: "Rubén",
		apodo: "El mago de la programasion",
		descripcion: "Rubén, conocido como “El Mago de la Programasión”, es un experto en desarrollo de aplicaciones iOS que combina su pasión con habilidades sobresalientes en Swift y SwiftUI",
		historia: "Descubrió su pasión por la tecnología a una temprana edad, transformando su curiosidad en habilidades sobresalientes en desarrollo iOS",
		edad: 30,
		poderes: [.manipulacionDeLaLuz, .manipulacionMental, .controlElemental],
		imagen: "https://avatars.githubusercontent.com/u/160135386?v=4"
	)
}
