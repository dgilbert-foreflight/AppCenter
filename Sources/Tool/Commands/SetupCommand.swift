//
//  SetupCommand.swift
//  
//
//  Created by Danny Gilbert on 12/9/22.
//

import Foundation
import ConsoleKit
import AppCenter

struct SetupCommand: AsyncCommand {

  let help: String = "Setup acbot"

  struct Signature: CommandSignature {
    @Option(
      name: "token",
      short: "t",
      help: "App Center API token"
    )
    var token: String?
  }

  func run(using context: CommandContext, signature: Signature) async throws {
    guard
      signature.token == nil
    else {
      AppCenterTool.token = signature.token
      context.console.success("API token has been updated!")
      return
    }
    
    AppCenterTool.token = context.console
      .ask(
        "Please provide your App Center API Token:",
        isSecure: true
      )

    context.console.success("API token has been set!")
  }
}
