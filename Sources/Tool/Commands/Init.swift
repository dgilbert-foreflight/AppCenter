//
//  SetupCommand.swift
//  
//
//  Created by Danny Gilbert on 12/9/22.
//

import Foundation
import ArgumentParser
import AppCenter

struct Init: ParsableCommand {

  static let configuration = CommandConfiguration(
    commandName: "init",
    abstract: "Initialize acbot.",
    usage: "init | init <app_center_api_token>",
    discussion: "Creates entries in keychain for storing AppCenter API token."
  )

  @Argument
  var token: String?

  func run() throws {
    if let token = token {
      AppCenterTool.token = token
      print("API token has been updated!")
    } else if let token = getpass("Please provide your App Center API Token:") {
      AppCenterTool.token = String(cString: token)
      print("API token has been set!")
    } else {
      Init.exit(withError: ValidationError("Password is required!"))
    }
  }
}
