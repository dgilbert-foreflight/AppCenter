//
//  AppCenterTool.swift
//  
//
//  Created by Danny Gilbert on 12/8/22.
//

import Foundation
import ArgumentParser
import AppCenter
import KeychainWrapper

@main
struct AppCenterTool: AsyncParsableCommand {

  @SecureItem(
    name: "AppCenterAPI Token"
  )
  static var token: AppCenterToken? {
    didSet {
      AppCenter.API.token = token
    }
  }

  static let configuration = CommandConfiguration(
    commandName: "acbot",
    abstract: "A utility for interacting with AppCenter.",
    usage: nil,
    discussion: "",
    version: "1.0.0",
    shouldDisplay: true,
    subcommands: [
      Init.self,
      Collaborators.self,
    ],
    defaultSubcommand: nil,
    helpNames: nil
  )

  public static func main() async {
    do {
      if let apiToken = Self.token {
        AppCenter.API.token = apiToken
      } else if !CommandLine.arguments.contains(where: { $0 == "init" }) {
        throw ValidationError("Please run `init` command to setup api token first!")
      }

      var command = try parseAsRoot()
      if var asyncCommand = command as? AsyncParsableCommand {
        try await asyncCommand.run()
      } else {
        try command.run()
      }
    } catch {
      exit(withError: error)
    }
  }
}
