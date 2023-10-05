//
//  Monitor.swift
//  PrimoProgrammaSecondoGruppo
//
//  Created by mr on 03/10/23.
//

import Foundation

public class Monitor {
    
    private var marca  : String
    private var prezzo : Double
    private var dimensione : Dimensione
    
    init(marca: String, prezzo: Double, dimensione: Dimensione) {
        self.marca = marca
        self.prezzo = prezzo
        self.dimensione = dimensione
    }
    
    
    public func getMarca() -> String {
        return self.marca
    }
    
    
    
    
}
