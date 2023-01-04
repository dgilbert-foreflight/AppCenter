//
//  SlackbotApp.swift
//  
//
//  Created by Danny Gilbert on 12/21/22.
//

import Vapor
import AppCenter

@main
struct SlackbotApp {
  
  static func main() async throws {
    var env = try Environment.detect()
    try LoggingSystem.bootstrap(from: &env)
    let app = Application(env)
    guard
      let appCenterToken = Environment.get("AppCenterAPIToken")
    else {
      app.logger.error("Missing AppCenter API Token!")
      fatalError("Missing AppCenter API Token!")
    }
    AppCenter.API.token = appCenterToken
    defer { app.shutdown() }
    try configure(app)
    try app.run()
  }
  
  /// configure the application
  static func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    
    // register routes
    try app.register(collection: CollaboratorsController())
  }
}
