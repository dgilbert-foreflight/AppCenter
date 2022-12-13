//
//  CollaboratorsCommand.swift
//  
//
//  Created by Danny Gilbert on 12/8/22.
//

import Foundation
import ConsoleKit

struct CollaboratorsCommand: AsyncCommandGroup {

  let commands: [String : AnyAsyncCommand] = [
    "add": AddCollaboratorCommand()
  ]

  let help: String = "Commands for managing collaborators for an App Center app."
}
