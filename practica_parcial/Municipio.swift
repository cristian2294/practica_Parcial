//
//  Municipio.swift
//  practica_parcial
//
//  Created by centro docente de computos on 18/03/16.
//  Copyright © 2016 Udem. All rights reserved.
//

import Foundation

class Municipio {
    
    
    var name: String?
    
    
    init(name:String){
        self.name = name
        
    }
    
    
    convenience init(){
        self.init(name:"")
        }
    
    
    class func municipios() -> [Municipio] {
        var data = [Municipio]()
        let rawData = [
            ["name":"caldas" ],
            ["name":"apartado"],
            ["name":"medellin"]
        ]
        
        for item in rawData{
            let municipio = Municipio(name: item["name"]! as String)
            data.append(municipio)
            
        }
        return data
    }
}

