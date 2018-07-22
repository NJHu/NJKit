//
//  UIKit+Extension.swift
//  NJKit
//
//  Created by HuXuPeng on 2018/7/22.
//

import Foundation
import UIKit

public extension UIImageView {
    
}


public  extension UIImage {
    public static func nj_image(name: String, bundleClass: AnyClass?, bundleFile: String? = nil) -> UIImage? {
        var image: UIImage?
        
        let bundle = bundleClass == nil ? Bundle.main : Bundle(for: bundleClass!)
        
        image = self.init(named: name, in: bundle, compatibleWith: nil)
        
        if image == nil, let path = bundle.path(forResource: bundleFile, ofType: "bundle") {
            image = self.init(named: name, in: Bundle.init(path: path), compatibleWith: nil)
        }
        
        if image == nil && bundleClass != nil {
            let nameSpace = NSStringFromClass(bundleClass!).components(separatedBy: ".").first
            if let nameS = nameSpace,  let path = bundle.path(forResource: nameS, ofType: "bundle"){
                image = self.init(named: name, in: Bundle.init(path: path), compatibleWith: nil)
            }
        }

        return image
    }
}

public extension UIApplication {
    var nj_interfaceOrientation_isPortrait: Bool {
        return UIApplication.shared.statusBarOrientation == UIInterfaceOrientation.portrait
    }
}
