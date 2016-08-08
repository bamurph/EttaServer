//
//  main.swift
//  EttaServer
//
//  Created by Ben Murphy on 8/8/16.
//
//

import Vapor

let drop = Droplet()

drop.get("/hello") { _ in
    return "Hello Vapor"
}

try drop.serve()
