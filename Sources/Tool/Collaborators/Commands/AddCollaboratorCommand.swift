//
//  AddCollaboratorCommand.swift
//  
//
//  Created by Danny Gilbert on 12/8/22.
//

import Foundation
import ConsoleKit
import AppCenter

struct AddCollaboratorCommand: AsyncCommand {

  let help: String = "Add collaborators to an App Center app."

  struct Signature: CommandSignature {
    @Argument(
      name: "owner_name",
      help: "The name of the owner"
    )
    var ownerName: String

    @Argument(
      name: "user_email",
      help: "Email of person you wish to add as a Collaborator."
    )
    var userEmail: String

    @Argument(
      name: "app_name",
      help: "Name of the application."
    )
    var appName: String
  }

  func run(using context: CommandContext, signature: Signature) async throws {
    do {
      try await AppCenter.API.apps
        .ownerName(signature.ownerName)
        .appName(signature.appName)
        .invitations
        .post(
          .init(
            userEmail: signature.userEmail,
            role: .collaborator
          )
        )
        .response
        .value
    } catch {
      print(error)
    }
  }
}
