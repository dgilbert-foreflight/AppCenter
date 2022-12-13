//
//  AppCenterTool.swift
//  
//
//  Created by Danny Gilbert on 12/8/22.
//

import Foundation
import ConsoleKit
import AppCenter
import KeychainWrapper

@main
struct AppCenterTool: AsyncCommandGroup {

  @SecureItem(
    name: "AppCenterAPI Token"
  )
  static var token: AppCenterToken? {
    didSet {
      AppCenter.API.token = token
    }
  }

  let commands: [String : AnyAsyncCommand] = [
    "init": SetupCommand(),
    "collaborator": CollaboratorsCommand(),
  ]

  let help: String = "Collection of Tools for interacting with App Center"

  static func main() async throws {
    let console: Console = Terminal()
    let input = CommandInput(arguments: CommandLine.arguments)
    let context = CommandContext(
      console: console,
      input: input
    )

    if Self.token == nil {
      console.error("App Center API token not setup in keychain!")
      console.info("Running setup command...")
      let emptyContext = CommandContext(
        console: console,
        input: .init(arguments: [CommandLine.arguments.removeFirst()])
      )
      try await console.run(SetupCommand(), with: emptyContext)
    }
    AppCenter.API.token = Self.token!

    let group = AppCenterTool()
    try await console.run(group, with: context)
  }
}
