//
//  GlobalOptions.swift
//  
//
//  Created by Danny Gilbert on 12/13/22.
//

import Foundation
import ArgumentParser

struct GlobalOptions: ParsableArguments {
  @Option
  var org: String?

  @Option
  var app: String?
}
