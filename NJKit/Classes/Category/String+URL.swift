//
//  String+URL.swift
//  NJKit
//
//  Created by HuXuPeng on 2018/7/8.
//

import Foundation

public extension String {
    
    public func urlEncoding() -> String? {
        let characters = "`#%^{}\"[]|\\<> "
        return self.addingPercentEncoding(withAllowedCharacters: CharacterSet.init(charactersIn: characters).inverted)
    }
}
