//
//  Database.swift
//  Motivation
//
//  Created by Iván Martínez on 8/30/19.
//  Copyright © 2019 Iván Martínez. All rights reserved.
//

import Foundation

// Definir autores
let elonMusk = Author(name: "Elon Musk", imagesNames: ["elonmusk1", "elonmusk2", "elonmusk3"])
let steveJobs = Author(name: "Steve Jobs", imagesNames: ["steve1", "steve2", "steve3"])
let markZuckerberg = Author(name: "Mark Zuckerberg", imagesNames: ["mark1", "mark2"])
let billGates = Author(name: "Bill Gates", imagesNames: ["gates1", "gates2"])
let carlSagan = Author(name: "Carl Sagan", imagesNames: ["sagan1", "sagan2"])

// Definir lista de frases
let frases = [
    Frase(
        text: "Las cosas no se hacen siguiendo caminos distintos para que no sean iguales, sino para que sean mejores.",
        author: elonMusk,
        favorita: false
    ),
    Frase(
        text: "Para llegar a ser CEO no hay que ser un experto en marketing y ventas; es necesario poseer profundos conocimientos de ingeniería.",
        author: elonMusk,
        favorita: false
    ),
    Frase(
        text: "Las ideas tienen que ir tomando forma. Se van haciendo realidad al trabajar en ellas. Solo hay que ponerse en marcha.",
        author: markZuckerberg,
        favorita: false
    ),
    Frase(
        text: "Es muy bueno ser un idealista, pero debes estar preparado para ser incomprendido.",
        author: markZuckerberg,
        favorita: false
    ),
    Frase(
        text: "La creatividad se trata de conectar cosas. Cuando le preguntas a personas creativas cómo hicieron algo, se sienten un poco culpables porque realmente no lo hicieron, sólo lo vieron. Pareció obvio para ellos después de un tiempo.",
        author: steveJobs,
        favorita: false
    ),
    Frase(
        text: "Decidir qué no hacer es tan importante como decidir qué hacer.",
        author: steveJobs,
        favorita: false
    ),
    Frase(
        text: "Si miramos al siguiente siglo, los líderes serán los que empoderan a otros.",
        author: billGates,
        favorita: false
    ),
    Frase(
        text: "Sé amable con los nerds. Lo más probable es que termines trabajando para uno.",
        author: billGates,
        favorita: false
    ),
    Frase(
        text: "Nunca me tomé un día libre en mis 20. Ni uno.",
        author: billGates,
        favorita: false
    ),
    Frase(
        text: "El diseño no es solo lo que se ve y lo que se siente. El diseño es cómo funciona.",
        author: steveJobs,
        favorita: false
    ),
    Frase(
        text: "El estudio del universo es un viaje al autodescubrimiento.",
        author: carlSagan,
        favorita: false
    ),
    Frase(text: "La imaginación frecuentemente nos llevará a mundos que jamás fueron. Pero sin ella, no iremos a ningún lado", author: carlSagan, favorita: false),
    Frase(text: "Si alguien no está de acuerdo contigo, déjalo vivir. No encontrarás a nadie parecido en cien mil millones de galaxias", author: carlSagan, favorita: false)
]

var frasesFavoritas = [Frase]()

// Definir lista de colores
let colores = [
    Color(red: 144, green: 50, blue: 61),
    Color(red: 78, green: 128, blue: 152),
    Color(red: 217, green: 93, blue: 57),
    Color(red: 123, green: 158, blue: 137),
    Color(red: 94, green: 193, blue: 127)
]
