//
//  SlackbotApp.swift
//  
//
//  Created by Danny Gilbert on 12/21/22.
//

import SwiftBlocksUI
import AppCenter
import Foundation

@main
struct AppCenterBot: App {
  
  var body: some Endpoints {
    Collaborators()
  }
  
  init() {
    AppCenter.API.token = ProcessInfo.processInfo.environment["APPCENTER_API_TOKEN"]
  }
}
