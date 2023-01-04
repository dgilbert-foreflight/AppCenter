//
//  CollaboratorsController.swift
//  
//
//  Created by Danny Gilbert on 12/21/22.
//

import Vapor
import AppCenter

struct CollaboratorsController: RouteCollection {
  
  func boot(routes: RoutesBuilder) throws {
    let router = routes.grouped("collaborators")
    
    router.post("add", use: addCollaboratorHandler)
  }
  
  func addCollaboratorHandler(_ req: Request) async throws -> HTTPStatus {
    let responseString = req.body.string
    var dict = [String: String]()
    
    guard
      let subStr = responseString?.components(separatedBy: "&")
    else {
      req.logger.error("Unable to unwrap subString")
      throw Abort(.badRequest)
    }
    
    for item in subStr {
      let comps = item.components(separatedBy: "=")
      let key = comps[0]
      let value = comps[1]
      dict[key] = value
    }
    
    guard
      let user = dict["user_name"]
    else {
      req.logger.error("user_name not found")
      throw Abort(.badRequest)
    }
    
    guard
      let text = dict["text"]
    else {
      req.logger.error("No object in dictionary with 'text' key")
      throw Abort(.badRequest)
    }
    
    var textComps = text.components(separatedBy: "+")
    guard
      !textComps.isEmpty
    else {
      req.logger.error("No arguments provided")
      throw Abort(.badRequest)
    }
    
    let appName = textComps.removeFirst()
    let cleanEmail = textComps.first?.replacingOccurrences(of: "%40", with: "@") ?? "\(user)@foreflight.com"
    
    do {
      req.logger.debug("Adding user \(cleanEmail) to \(appName)...")
      try await AppCenter.API.apps
        .ownerName("team-o86p")
        .appName(appName)
        .invitations
        .post(
          .init(
            userEmail: cleanEmail,
            role: .collaborator
          )
        )
        .response
        .value
      return .noContent
    } catch {
      req.logger.error("\(error.localizedDescription)")
      throw Abort(.internalServerError)
    }
  }
}
