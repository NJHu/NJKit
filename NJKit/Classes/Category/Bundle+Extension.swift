//
//  Bundle+Extension.swift
//  NJKit
//
//  Created by NJHu on 2018/7/15.
//

import Foundation

extension Bundle {
    public static func nj_curBundle(class bundleOfClass: AnyClass?, bundleFile: String? = nil) -> Bundle {
        
        var bundle = bundleOfClass == nil ? Bundle.main : Bundle(for: bundleOfClass!)
        
        if let path = bundle.path(forResource: bundleFile, ofType: "bundle") {
            if let newBundle = Bundle.init(path: path) {
                bundle = newBundle
            }
        }
        
        return bundle
    }
}
