//
//  Collaborators.swift
//  
//
//  Created by Danny Gilbert on 12/8/22.
//

import Foundation
import AppCenter
import ArgumentParser

struct Collaborators: ParsableCommand {

  static let configuration = CommandConfiguration(
    commandName: "collaborator",
    abstract: "Manage collaborators for AppCenter apps.",
    usage: nil,
    discussion: "",
    shouldDisplay: true,
    subcommands: [
      Add.self
    ],
    defaultSubcommand: nil,
    helpNames: nil
  )
}

// MARK: - Subcommand - Add Collaborators
extension Collaborators {

  struct Add: AsyncParsableCommand {
    static let configuration = CommandConfiguration(
      abstract: "Add collaborators to an AppCenter app."
    )

    @OptionGroup
    var global: GlobalOptions

    @Argument
    var userEmail: String

    func validate() throws {
      guard global.org != nil else {
        throw ValidationError("`--org` option required!")
      }
      guard global.app != nil else {
        throw ValidationError("`--app` option required!")
      }
    }

    func run() async throws {
      guard
        let ownerName = global.org,
        let appName = global.app
      else { return }

      do {
        try await AppCenter.API.apps
          .ownerName(ownerName)
          .appName(appName)
          .invitations
          .post(
            .init(
              userEmail: userEmail,
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
}
