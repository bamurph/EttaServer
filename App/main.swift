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
let _ = drop.config["app", "key"].string ?? ""

drop.get("/") { request in
  return "Hello"
}

drop.get("search", String.self) { request, searchString in

    let queryURL = eoURL + searchString

    let etymResponse = try drop.client.get(queryURL)

    return etymResponse

}

let port = drop.config["app", "port"].int ?? 80

drop.serve()
