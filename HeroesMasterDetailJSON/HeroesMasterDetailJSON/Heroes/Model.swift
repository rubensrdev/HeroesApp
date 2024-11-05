//
//  Model.swift
//  HeroesMasterDetailJSON
//
//  Created by Rubén Segura Romo on 5/11/24.
//

import Foundation

struct Heroe: Codable, Identifiable, Hashable {
	var id: UUID?
	let nombreReal: String
	let apodo: String
	let descripcion: String?
	let historia: String?
	let edad: Int
	let poderes: [PoderesSuperheroes]
	let imagen: String
}

enum PoderesSuperheroes: String, Codable, CaseIterable, Identifiable {
	
	var id: String { rawValue }
	
	case telepatia = "Telepatía"
	case vuelo = "Vuelo"
	case superFuerza = "Super Fuerza"
	case invisibilidad = "Invisibilidad"
	case teletransportacion = "Teletransportación"
	case manipulacionDelTiempo = "Manipulación del Tiempo"
	case controlElemental = "Control Elemental"
	case duplicacion = "Duplicación"
	case imitacionDeSonido = "Imitación de Sonido"
	case amplificacionDelSonido = "Amplificación del Sonido"
	case generacionDeVibraciones = "Generación de Vibraciones"
	case controlDeVibraciones = "Control de Vibraciones"
	case manipulacionDeLaLuz = "Manipulación de la Luz"
	case emisionDeLuz = "Emisión de Luz"
	case giroRapido = "Giro Rápido"
	case creacionDeTornados = "Creación de Tornados"
	case manipulacionDeLaTierra = "Manipulación de la Tierra"
	case creacionDeRocas = "Creación de Rocas"
	case manipulacionDelClima = "Manipulación del Clima"
	case manipulacionMental = "Manipulación Mental"
	case invulnerabilidad = "Invulnerabilidad"
	case pielMetalica = "Piel Metálica"
	case manipulacionDelAgua = "Manipulación del agua"
	case comunicacionConVidaMarina = "Comunicación con vida marina"
	case transformacionEnFormaAcuatica = "Transformación en forma acuática"
	case manipulacionDeSombras = "Manipulación de sombras"
	case teletransportacionATravesDeSombras = "Teletransportación a través de sombras"
	case regeneracion = "Regeneración"
	case manipulacionDelFuego = "Manipulación del fuego"
	case resistenciaMejorada = "Resistencia Mejorada"
}

func getHeroes() -> [Heroe] {
	guard let url = Bundle.main.url(forResource: "SuperHeroes", withExtension: "json") else {
		return []
	}
	do {
		let data = try Data(contentsOf: url)
		return try JSONDecoder().decode([Heroe].self, from: data).self
	} catch {
		print("Error decodificando el JSON: \(error)")
		return []
	}
}
