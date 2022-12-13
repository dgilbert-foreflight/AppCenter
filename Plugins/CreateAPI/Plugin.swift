//
//  Plugin.swift
//  
//
//  Created by Danny Gilbert on 12/7/22.
//

import Foundation
import PackagePlugin

@main
struct Plugin: CommandPlugin {
  func performCommand(context: PluginContext, arguments: [String]) async throws {
    let createAPI = try context.tool(named: "create-api")
    let packageDirectory = context.package.directory
    let pluginDirectory = packageDirectory.appending("Plugins", "CreateAPI")
    let sourcesDirectory = packageDirectory.appending("Sources")

    let openAPISpec = pluginDirectory.appending("appcenter.yml")
      .string
    let createAPISpec = pluginDirectory.appending("create-api.yml")
      .string
    let output = sourcesDirectory.appending("Library")
      .string

    let process = Process()
    process.currentDirectoryURL = URL(fileURLWithPath: packageDirectory.string)
    process.executableURL = URL(fileURLWithPath: createAPI.path.string)
    process.arguments = [
      "generate", openAPISpec,
      "--output", output,
      "--config", createAPISpec,
    ]

    try process.run()
    process.waitUntilExit()
  }
}
