//
//  Pc.swift
//  PrimoProgrammaSecondoGruppo
//
//  Created by mr on 03/10/23.
//

import Foundation


public class Pc {
    
    var ram : Int
    var marca : String
    var monitors : [Monitor]
    
    
    init(ram: Int, marca: String, monitors: [Monitor]) {
        self.ram = ram
        self.marca = marca
        self.monitors = monitors
    }
    
    public func setRam(ram : Int){
        
        guard ram > 0 else {
            print("valore ram non corretto ")
            return ;
        }
        
        self.ram = ram
    }
    
    
}
