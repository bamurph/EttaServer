//
//  main.swift
//  EttaServer
//
//  Created by Ben Murphy on 8/8/16.
//
//

import Vapor
import HTTP

let eoURL = "http://www.etymonline.com/index.php?term="


let drop = Droplet()

drop.get("search", String.self) { request, searchString in


    let queryURL = eoURL + searchString

    let etymResponse = try drop.client.get(queryURL)

    return etymResponse

}



drop.serve()
