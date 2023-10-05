//
//  Dimensione.swift
//  PrimoProgrammaSecondoGruppo
//
//  Created by mr on 03/10/23.
//

import Foundation

public class Dimensione {
    
    
    private var larghezza : Int
    private var altezza : Int
    
    
    init(larghezza: Int, altezza: Int) {
        self.larghezza = larghezza
        self.altezza = altezza
    }
    
    func setLarghezza(larghezza : Int){
        self.larghezza = larghezza
    }
    
    func setAltezza(altezza : Int) {
        self.altezza = altezza
    }
    
    
    func getLarghezza() -> Int {
        return self.larghezza
    }
    
    
    func getAltezza() -> Int {
        return self.altezza
    }
    
    
    
    
    
    
}
