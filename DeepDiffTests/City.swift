//
//  City.swift
//  DeepDiff
//
//  Created by Khoa Pham.
//  Copyright © 2018 Khoa Pham. All rights reserved.
//

import Foundation
import DeepDiff

struct City {
  let name: String
}

extension City: DiffAware {
  var idProviding: Int {
    return name.hashValue
  }

  static func comparing(_ a: City, _ b: City) -> Bool {
    return a.name == b.name
  }
}
