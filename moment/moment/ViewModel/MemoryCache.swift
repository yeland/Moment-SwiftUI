//
//  MomeryCache.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/9.
//

import Foundation
import UIKit

class MemoryCache {
  private static let instance : MemoryCache = MemoryCache()
  class var shared: MemoryCache {
    return instance
  }
  var cache = NSCache<AnyObject, AnyObject>()

  func value(urlString: String) -> UIImage? {
    return self.cache.object(forKey: urlString as AnyObject) as? UIImage
  }

  func store(urlString: String, image: UIImage) {
    self.cache.setObject(image as UIImage, forKey: urlString as AnyObject)
  }
}
