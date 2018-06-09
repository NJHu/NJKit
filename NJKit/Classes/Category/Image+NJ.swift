//
//  Image+NJ.swift
//  Alamofire
//
//  Created by NJHu on 2018/6/9.
//

import UIKit
import Foundation

extension UIImage {
    public static func nj_imageFromXcassets(name: String, bundleClass: AnyClass?) -> UIImage? {
        var image: UIImage?
        var bundle = bundleClass == nil ? Bundle.main : Bundle(for: bundleClass!)
        
        image = self.init(named: name, in: bundle, compatibleWith: nil)
        if image == nil {
            let scaleName = "\(name)@\(Int(UIScreen.main.scale))x.png"
            image = self.init(named: name, in: bundle, compatibleWith: nil)
        }
        return image
    }
}
