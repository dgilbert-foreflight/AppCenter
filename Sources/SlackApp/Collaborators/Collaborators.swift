//
//  Collaborators.swift
//  
//
//  Created by Danny Gilbert on 1/10/23.
//

import SwiftBlocksUI
import SlackBlocksModel
import AppCenter

struct Collaborators: App {
  
  var body: some Endpoints {
    Use(
      logger("dev"),
      bodyParser.urlencoded(),
      sslCheck(verifyToken(allowUnsetInDebug: true))
    )
    
    Slash("collaborate") { req, resp in
      Task {
        let email = req.user.ffEmail
        let appName = req.text
        do {
          try await AppCenter.API.apps
            .ownerName("team-o86p")
            .appName(appName)
            .invitations
            .post(.init(
              userEmail: email,
              role: .collaborator
            ))
            .response
            .value
          
          resp.sendMessage {
            Text("\(email) was added to \(appName)")
          }
        } catch {
          resp.sendMessage {
            Text("\(error)")
          }
        }
      }
    }
  }
}

extension InteractiveRequest.User {
  
  var ffEmail: String {
    "\(username)@foreflight.com"
  }
}
